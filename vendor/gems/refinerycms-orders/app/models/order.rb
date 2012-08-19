include PaymentHelper

class Order < ActiveRecord::Base
  include ActiveMerchant::Billing
  include ActiveMerchant::Utils
  
  belongs_to :order_state
  belongs_to :member
  has_many :line_items
  has_many :programs, :through => :line_items
  has_many :invoices
  
  attr_accessible :member_id, :item_total, :total, :order_state_id
  after_create :set_initial_state
  
  def set_initial_state
    if !self.order_state
      self.update_attribute(:order_state_id, (OrderState.find_by_state("cart").id rescue 1))
    end
  end
  
  def in_cart_count
    count = 0
    self.line_items.each do |li|
      count += li.quantity
    end
    return count
  end
  
  def has_subscriptions?
    self.line_items.each do |li|
      return true if li.recurring == true
    end
    return false
  end
  
  def has_one_times?
    self.line_items.each do |li|
      return true if li.recurring == false
    end
    return false    
  end
  
  def has_items?
    return true if self.line_items.count > 0
    return false
  end
  
  def add_item(obj = nil, qty = 1, amount = nil, recurring = "monthly")
    qty = qty.to_i
    does_this_reoccur = true
    does_this_reoccur = false if recurring != "monthly"
    logger.debug("!********")
    line_item = LineItem.new(:order_id => self.id, :quantity => qty, :recurring => does_this_reoccur)
    logger.debug("!********")
    if (self.line_items.inject(0){ |result, element| result + element.price } + (amount.to_f)) > 16000
      logger.debug("Its greater!!!!")
      return false
    end
    logger.debug("!********")
    if obj && obj.class == Program
      li_found = false
      if li_found
        # do nothing
      else
        item = Program.find(obj.id)
        line_item.program_id = item.id
        if amount
          line_item.price = amount
        else
          if does_this_reoccur
            line_item.price = item.monthly_suggested_amounts.split(",")[0]
          else
            line_item.price = item.one_time_suggested_amounts.split(",")[0]
          end
        end
      end
    else
      return false
    end
    
    if line_item.save
      return true
    else
      return false
    end
  end
  
  def remove_item(obj_id)
    li = LineItem.find(obj_id)
    if li
      li.destroy
      if self.calculate!
        return true
      end
    end
    return false
  end
  
  def subscription_total
    total = 0.00
    self.line_items.select{ |li| li.recurring? }.each do |li|
      total += li.price.to_f
    end
    return total
  end
  
  def one_time_total
    total = 0.00
    self.line_items.select{ |li| !li.recurring? }.each do |li|
      total += li.price.to_f
    end
    logger.debug("ONe Time Total Call: #{total}")
    return total
  end
  
  def calculate!
    li_totals = 0
    self.line_items.each do |li|
      li_totals += li.price * li.quantity
    end
    self.item_total = li_totals
    self.total = li_totals
    if self.save
      return true
    else
      return false
    end
  end
  
  def has_programs?
    return true if self.line_items.detect{ |li| li.program }
    return false
  end
  
  def get_subscription_type(day)
    return SubscriptionType.find_by_day(day.to_i)
  end
  
  def process_subscriptions(params)
    return false if self.member.nil?
    return false if self.line_items.nil?
    @donor = self.member
    @donor.signup_to_newsletter if !params[:contribution][:newsletter_receive]
    logger.debug("Order: #{self.id}")
    logger.debug("Line items:::\n #{self.line_items.inspect}")
    self.line_items.select{ |li| li.recurring? }.each do |li|
      logger.debug("Running LI: #{li.id}")
      @sub_type = get_subscription_type(params[:contribution][:day])
      @invoice = Invoice.create(:amount => li.price.to_f, :member_id => @donor.id, :settled => false, :order_id => self.id, :notes => params[:contribution][:notes])
      @subscription = Subscription.create(:member_id => @donor.id, :subscription_type_id => @sub_type.id, :amount => @invoice.amount, :program_id => li.program.id, :invoice_id => @invoice.id, :start_date => get_start_date(params[:contribution][:day]))
      @ARB_sub = build_subscription_object(@donor, @invoice, params, li.price.to_f)
     
      if params[:payment_type] == "cc"
        @expiry = get_expiry(params[:contribution]["expiry_month(2i)"], params[:contribution]['expiry_year(1i)'])
        @ARB_sub.credit_card = AuthorizeNet::CreditCard.new(params[:contribution][:number], @expiry, {:card_code => params[:contribution][:ccv]})
        c = params[:contribution][:number]
        @invoice.payment_method = "Credit Card"
        @invoice.payment_number = "XXXX#{c[(c.length - 4)...c.length]}"
        @invoice.save
        @subscription.payment_method = "Credit Card"
        @subscription.payment_number = "XXXX#{c[(c.length - 4)...c.length]}"
        @subscription.save
      elsif params[:payment_type] == "bank"
        @ARB_sub.bank_account = AuthorizeNet::ECheck.new(params[:contribution][:routing_number], params[:contribution][:account_number], params[:contribution][:bank_name], @donor.full_name, {:account_type => params[:contribution][:account_type].downcase})
        @invoice.payment_method = "#{params[:contribution][:account_type]} Account"
        c = params[:contribution][:account_number]
        @invoice.payment_number = "XXXX#{c[(c.length-4)...c.length]}"
        @invoice.save
        @subscription.payment_method = "#{ params[:contribution][:account_type] } Account"
        @subscription.payment_number = "XXXX#{c[(c.length-4)...c.length]}"
        @subscription.save
      end
      
      @ARB_tran = AuthorizeNet::ARB::Transaction.new(PAYMENTGATEWAYLOGIN, PAYMENTGATEWAYPASSWORD, :gateway => ANETMODE)
      @ARB_tran.set_address(self.member.billing_address_for_transaction)
      response = @ARB_tran.create(@ARB_sub)
      logger.debug("Response: #{response.inspect}")
      if response.success?
        if @subscription.update_attribute(:arb_subscription_id, response.subscription_id)
          @invoice.update_attributes({:settled => true, :subscription_id => @subscription.id})
          li.update_attribute(:invoice_id, @invoice.id)
          MembershipMailer.order_complete_mailer(self.member, @invoice).deliver
          if (!self.has_one_times?)
            self.update_attributes({ :order_state_id => 3 })
          end
        end
      else
        @invoice.update_attributes({:settled => false})
        @subscription.update_attributes({:active => false})
        return false
      end
    end
    return true
  end
  
  def process_one_times(params)
    return false unless self
    return false if self.member.nil?
    return false if self.line_items.nil?
    return false if self.order_state_id == 3
    logger.debug("All checks passed")
    @donor = self.member
    @donor.signup_to_newsletter if !params[:contribution][:newsletter_receive]
    @invoice = Invoice.create(:amount => self.one_time_total, :member_id => @donor.id, :settled => false, :order_id => self.id, :notes => params[:contribution][:notes])
    @tranny = Transaction.create({:invoice_id => @invoice.id, :amount => @invoice.amount})
    @invoice.transaction = @tranny
    @invoice.save
    @cim_gateway = AuthorizeNet::CIM::Transaction.new(PAYMENTGATEWAYLOGIN, PAYMENTGATEWAYPASSWORD, :gateway => ANETMODE)
    @aim_gateway = AuthorizeNet::AIM::Transaction.new(PAYMENTGATEWAYLOGIN, PAYMENTGATEWAYPASSWORD, :gateway => ANETMODE)
    @aim_gateway.set_address(self.member.billing_address_for_transaction)
    logger.debug("creation stuff")
    logger.debug("Order: #{self.id}")
    logger.debug("Line items:::\n #{self.line_items.inspect}")
    if params[:use_payment_profile] == "yes"
      logger.debug("USE PP")
      # Use Payment Profile
      @pp = PaymentProfile.find(params[:contribution][:payment_profile])
      response = @cim_gateway.create_transaction(:auth_capture, @invoice.amount.to_s, @donor.customer_cim_id, @pp.payment_cim_id, nil)
      logger.debug("Response: #{response.inspect}")
      logger.debug("#{response.direct_response.inspect}")
      logger.debug("***")
      logger.debug("#{response.direct_response.transaction_id rescue "nothing"}")
      if response.success?
        # Successful response
        @tranny.update_attributes({:confirmation_id => response.direct_response.transaction_id, :error => false, :error_message => "Transaction was successful."})
        @invoice.update_attributes({:settled => true, :payment_profile_id => @pp.id, :payment_method => @pp.payment_type})
        if @pp.payment_type == "Checking" || @pp.payment_type == "Savings"
          @invoice.update_attribute(:payment_number, @pp.bank_routing_number)
        else 
          @invoice.update_attribute(:payment_number, @pp.credit_card_number)
        end
        self.line_items.each do |li|
          if !li.recurring?
            li.update_attribute(:invoice_id, @invoice.id)
          end
        end
        self.update_attributes({:order_state_id => 3})
        
        # @invoice.reload!
        logger.debug("INvoice line items: #{@invoice.line_items.count}")
        MembershipMailer.order_complete_mailer(self.member, @invoice).deliver
        return true # Done Processing
      else 
        # Failed Response
        @tranny.update_attributes({:error => !response.success?, :error_code => response.response_reason_code, :error_message => response.response_reason_text})
        @invoice.update_attributes({:settled => false})
      end
    else # params[:use_payment_profile] == "no" || !params[:use_payment_profile] || params[:use_payment_profile].nil?
      logger.debug("NO PP")
      # Use Provided Payment Method
      if params[:payment_type] == "cc"
        logger.debug("ROLL A CC")
        # Roll a CC
        @expiry = get_expiry(params[:contribution]["expiry_month(2i)"], params[:contribution]['expiry_year(1i)'])
        @credit_card = AuthorizeNet::CreditCard.new(params[:contribution][:number], @expiry, {:card_code => params[:contribution][:ccv]})
        if @credit_card
          logger.debug("CC IS GOOD")
          response = @aim_gateway.purchase(@invoice.amount, @credit_card)
          logger.debug("One Time Response: #{response.inspect}")
          if response.success?
            logger.debug("SUCCESS")
            @tranny.update_attributes({:confirmation_id => (response.transaction_id rescue "XXX"), :error_message => "Transaction was successful"})
            @invoice.update_attributes({:settled => true, :payment_method => "Credit Card", :payment_number => "XXXX#{params[:contribution][:number][(params[:contribution][:number].length - 4)...params[:contribution][:number].length]}"})
            self.update_attributes({:order_state_id => 3})
            
            self.line_items.each do |li|
              if !li.recurring?
                li.update_attribute(:invoice_id, @invoice.id)
              end
            end
            MembershipMailer.order_complete_mailer(self.member, @invoice).deliver
            return true # Done Processing
          else
            # Failure
            logger.debug("Failure: #{response.inspect}")
            @tranny.update_attributes({:error => !response.success?, :error_code => "error", :error_message => response.response_reason_text})
            @invoice.update_attributes({:settled => false})
          end
        else 
          logger.debug("CC IS BAD")
          # Credit Card not Valid
          @tranny.update_attributes({:error => 1, :error_code => "", :error_message => "Credit card is not valid."})
        end
      elsif params[:payment_type] == "bank"
        # Roll A Bank account
        @bank_account = AuthorizeNet::ECheck.new(params[:contribution][:routing_number], params[:contribution][:account_number], params[:contribution][:bank_name], @donor.full_name, {:account_type => params[:contribution][:account_type].downcase})
        if @bank_account
          response = @aim_gateway.purchase(@invoice.amount, @bank_account)
          if response.success?
            logger.debug("Success: #{response.inspect}")
            @tranny.update_attributes({:confirmation_id => response.transaction_id})
            @invoice.update_attributes({:settled => true, :payment_method => "Credit Card", :payment_number => "XXXX#{params[:contribution][:account_number][(params[:contribution][:account_number].length - 4)...params[:contribution][:account_number].length]}"})
            self.update_attributes({:order_state_id => 3})
            self.line_items.each do |li|
              if !li.recurring?
                li.update_attribute(:invoice_id, @invoice.id)
              end
            end
            return true # Done Processing
          else
            # Failure
            logger.debug("Failure: #{response.inspect}")
            @tranny.update_attributes({:error => !response.success?, :error_code => "error", :error_message => response.response_reason_text})
            @invoice.update_attributes({:settled => false})
          end
        end
      end
    end
    logger.debug("All fails.")
    # All else fails.
    return false
  end
end

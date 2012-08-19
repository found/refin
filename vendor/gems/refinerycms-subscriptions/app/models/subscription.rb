include PaymentHelper

class Subscription < ActiveRecord::Base
  include ActiveMerchant::Billing
  include ActiveMerchant::Utils
  
  belongs_to :member
  belongs_to :subscription_type
  belongs_to :program
  belongs_to :invoice
  has_many :subscription_adjustments
  has_many :subscription_transactions
  
  scope :active, where(:active => true)
  scope :inactive, where(:active => false)

  def cancel_subscription
    @gateway = AuthorizeNet::ARB::Transaction.new("4rm6gL9TQE", "46aVuA5B49P8h5M3", :gateway => :live)
    response = @gateway.get_status(self.arb_subscription_id)
    
    case response.subscription_status
    when "canceled"
      if self.update_attributes({:active => false, :end_date => Time.now})
        return true
      end
      return false
    when "active"
      @gateway = AuthorizeNet::ARB::Transaction.new(PAYMENTGATEWAYLOGIN, PAYMENTGATEWAYPASSWORD, :gateway => ANETMODE)
      response = @gateway.cancel(self.arb_subscription_id)
      if response.success?
        if self.update_attributes({:active => false, :end_date => Time.now})
          return true
        end
        return false
      end
      return false
    when "terminated"
      if self.update_attributes({:active => false, :end_date => Time.now})
        return true
      end
      return false
    else
      return false
    end
  end
  
  def build_subscription_object_for_update(amount, arb_id)
    address = self.member.billing_address_from_db
    sub = AuthorizeNet::ARB::Subscription.new(
      :amount => amount,
      :subscription_id => arb_id,
      :total_occurrences => 9999,
      billing_address: {
        :first_name => (self.member.first_name || ""),
        :last_name => (self.member.last_name || ""),
        :address => ("#{address.address_1 rescue ""} #{address.address_2 rescue ""}"),
        :city => (address.city || ""),
        :state => (address.state || ""),
        :zip => (address.postal_code || ""),
        :country => (address.country.country_name || ""),
        :phone => (self.member.phone || ""),
        :fax => "",
        :email => self.member.email
      }
    )
    return sub
  end
  
  def update_sub_amount(amount=nil)
    amount = self.amount if !amount
    sub = build_subscription_object_for_update(amount, self.arb_subscription_id)
    @ARB_tran = AuthorizeNet::ARB::Transaction.new(PAYMENTGATEWAYLOGIN, PAYMENTGATEWAYPASSWORD, :gateway => ANETMODE)
    @arb_tran.set_address(self.billing_address_for_transaction)
    response = @ARB_tran.update(sub)
    logger.debug("Response from Update: #{response.inspect}")
    if response.success?
      self.update_attributes({:amount => amount})
      return true
    else
      return false
    end
  end
  
  def update_sub_payment(params)
    @ARB_sub = build_subscription_object_for_update(self.amount, self.arb_subscription_id)
    
    if self.payment_method == "Credit Card"
      @expiry = get_expiry(params[:contribution]["expiry_month(2i)"], params[:contribution]['expiry_year(1i)'])
      @ARB_sub.credit_card = AuthorizeNet::CreditCard.new(params[:contribution][:number], @expiry, {:card_code => params[:contribution][:ccv]})
      c = params[:contribution][:number]
      self.invoice.payment_number = "XXXX#{c[(c.length - 4)...c.length]}"
      self.invoice.save
      self.payment_number = "XXXX#{c[(c.length - 4)...c.length]}"
      self.save
    elsif self.payment_method.include?("Account")
      @ARB_sub.bank_account = AuthorizeNet::ECheck.new(params[:contribution][:routing_number], params[:contribution][:account_number], params[:contribution][:bank_name], self.member.full_name, {:account_type => params[:contribution][:account_type].downcase})
      self.invoice.payment_method = "#{params[:contribution][:account_type]} Account"
      c = params[:contribution][:account_number]
      self.invoice.payment_number = "XXXX#{c[(c.length-4)...c.length]}"
      self.invoice.save
      self.payment_method = "#{params[:contribution][:account_type]} Account"
      self.payment_number = "XXXX#{c[(c.length-4)...c.length]}"
      self.save
    end
    
    
    @ARB_tran = AuthorizeNet::ARB::Transaction.new(PAYMENTGATEWAYLOGIN, PAYMENTGATEWAYPASSWORD, :gateway => ANETMODE)
    @ARB_tran.set_address(self.member.billing_address_for_transaction)
    response = @ARB_tran.update(@ARB_sub)
    logger.debug("Response from Update: #{response.inspect}")
    if response.success?
      return true
    else
      return false
    end
  end
  
  def next_billing_cycle
    today = Time.now.day
    sub_day = self.subscription_type.day
    if today < sub_day
      return Date.strptime("{ #{Time.now.year}, #{Time.now.month}, #{sub_day} }", "{ %Y, %m, %d }")
    else
      return (Date.strptime("{ #{Time.now.year}, #{Time.now.month}, #{sub_day} }", "{ %Y, %m, %d }") + 1.month)
    end
  end
end

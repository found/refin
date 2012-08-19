class Program < ActiveRecord::Base
  acts_as_indexed :fields => [:program_name, :program_short_description, :program_description]
  validates :program_name, :presence => true, :uniqueness => true
  belongs_to :program_image, :class_name => 'Image'
  has_many :line_items
  has_many :orders, :through => :line_items
  has_many :cat_prog_juncs
  has_many :categories, :through => :cat_prog_juncs
  has_many :subscriptions
  has_many :news_items
  has_many :donation_adjustments
  
  default_scope :order => "position ASC"
  scope :program_name_asc, :order => "program_name ASC"
  # serialize :suggested_amounts
  
  # Awesome start_date_getter.  I wrote this.  Awesome.
  # Basically, pass it the numerical day that you want it to start on, i.e. the 1st or 15th (1 || 15)
  # If todays date is past then, it returns the date object of that day next month, if it hasnt passed
  # it returns the date object of this months date on that day.  
  # If you pass it junk in string format, I convert it to int, and if it fails out, itll return you next
  # months valid date.
  def get_start_date(day)
    day = day.to_i
    if Date.today.day < day
      return Date.today + (day - Date.today.day).days
    else 
      return Date.today.end_of_month + day.days
    end
  end
  
  def self.per_page # for will_paginate
    20
  end
  
  # Basically a helper method.  CC's need an expiration in a descript format for ActiveMerchant
  # such as 0612.  This is a pain to do over and over in my object creation so I made this.  it 
  # accepts the month and year as params, constructs a string, and returns it.  Simple enough.
  def get_expiry(expiry_month, expiry_year)
    logger.debug("getting expiry")
    expiry_month = "0" + expiry_month if expiry_month.length < 2
    expiry_year = expiry_year.split("")[2] + expiry_year.split("")[3]
    return expiry_month + expiry_year
  end
  
  def build_subscription_object(donor, invoice, params)
    start_date = get_start_date(params[:contribution][:day])
    billing_address = donor.billing_address_from_db
    sub = AuthorizeNet::ARB::Subscription.new(
      :name => "Monthly Christian Aid Ministries Program",
      :length => 1, 
      :unit => AuthorizeNet::ARB::Subscription::IntervalUnits::MONTH,
      :start_date => start_date,
      :total_occurrences => 12,
      :amount => invoice.amount,
      :invoice_number => invoice.id,
      :description => "Monthly program of #{@invoice.amount}",
      
      :billing_address => {
        :first_name => donor.first_name,
        :last_name => donor.last_name,
        :company => donor.organization,
        :address => billing_address.address_1 + " " + billing_address.address_2,
        :city => billing_address.city,
        :state => billing_address.state,
        :zip => billing_address.postal_code,
        :country => billing_address.country,
        :phone => donor.phone,
        :fax => donor.fax,
        :customer_address_id => billing_address.id
      }
    )
    return sub
  end
  
  def get_subscription_type(day)
    return SubscriptionType.find_by_day(day.to_i)
  end
  
  def process_program(params)
    logger.debug("PROCESSING::::")
    logger.debug(params.inspect)
    @donor = Member.find(params[:donor_id])
    @sub_type = get_subscription_type(params[:contribution][:day])
    @invoice = Invoice.create(:amount => params[:amount].to_f, :member_id => @donor.id, :settled => false)
    @subscription = Subscription.new(:member_id => @donor.id, :subscription_type_id => @sub_type.id, :amount => @invoice.amount)
    @ARB_sub = build_subscription_object(@donor, @invoice, params)
    
    if params[:payment_type] == "cc"
      expiry = get_expiry(params[:contribution]["expiry_month(2i)"], params[:contribution]['expiry_year(1i)'])
      @ARB_sub.credit_card = AuthorizeNet::CreditCard.new(params[:contribution][:number], expiry, {:card_code => params[:contribution][:ccv]})
    elsif params[:payment_type] == "bank"
      @ARB_sub.bank_account = AuthorizeNet::ECheck.new(params[:contribution][:routing_number], params[:contribution][:account_number], params[:contribution][:bank_name], @donor.full_name, {:account_type => params[:contribution][:account_type].downcase})
    end
    
    @ARB_tran = AuthorizeNet::ARB::Transaction.new(AUTHORIZE_NET_CONFIG['api_login_id'], AUTHORIZE_NET_CONFIG['api_transaction_key'])
    response = @ARB_tran.create(@ARB_sub)
    logger.debug("------------ Response received: ---------------\n #{response.inspect}")
    logger.debug("--------------- End response ------------------")
    logger.debug("Result: #{response.success?}")
    logger.debug("Subscription ID: " + response.subscription_id)
    if response.success?
      if @subscription.update_attribute(:arb_subscription_id, response.subscription_id)
        @invoice.update_attribute(:subscription_id, @subscription.id)
        logger.debug("Success")
        return true
      end
    else
      @invoice.destroy
      logger.debug("failure")
      return false
    end
  end
end

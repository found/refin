module PaymentHelper
  
  def get_start_date(day)
    day = day.to_i
    if Date.today.day < day
      return Date.today + (day - Date.today.day).days
    else 
      return Date.today.end_of_month + day.days
    end
  end
  
  def get_expiry(expiry_month, expiry_year)
    logger.debug("getting expiry")
    expiry_month = "0" + expiry_month if expiry_month.length < 2
    expiry_year = expiry_year.split("")[2] + expiry_year.split("")[3]
    return expiry_month + expiry_year
  end
  
  def build_subscription_object(donor, invoice, params, amount)
    start_date = get_start_date(params[:contribution][:day])
    billing_address = donor.billing_address_from_db
    sub = AuthorizeNet::ARB::Subscription.new(
      :name => "Monthly Christian Aid Ministries Donation",
      :length => 1, 
      :unit => AuthorizeNet::ARB::Subscription::IntervalUnits::MONTH,
      :start_date => start_date,
      :total_occurrences => 9999,
      :amount => amount,
      :invoice_number => invoice.id,
      :description => "Monthly donation of #{@invoice.amount}",
      
      :billing_address => {
        :first_name => donor.first_name,
        :last_name => donor.last_name,
        :company => donor.organization,
        :address => billing_address.address_1 + " " + billing_address.address_2,
        :city => billing_address.city,
        :state => billing_address.state,
        :zip => billing_address.postal_code,
        :country => (billing_address.country.country_name rescue "United States"),
        :phone => donor.phone,
        :fax => donor.fax,
        :customer_address_id => billing_address.id
      }
    )
    return sub
  end
  
end
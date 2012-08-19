# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
CamDon::Application.initialize!

module ActiveMerchant
  module Utils
    
    if Rails.env == "development" || Rails.env == "test"
      puts "USING DEV KEYS"
      PAYMENTGATEWAYLOGIN = "8hCVQG37nfv"
      PAYMENTGATEWAYPASSWORD = "967rmn35H7H9M5ZL"
      PAYMENTGATEWAYMODE = true
      ANETMODE = :test
    else
      puts "USING LIVE KEYS"
      PAYMENTGATEWAYLOGIN = "4rm6gL9TQE"
      PAYMENTGATEWAYPASSWORD = "46aVuA5B49P8h5M3"
      PAYMENTGATEWAYMODE = false
      ANETMODE = :live
    end
    def get_payment_gateway
      gateway = ActiveMerchant::Billing::AuthorizeNetCimGateway.new(
        :login => PAYMENTGATEWAYLOGIN,
        :password => PAYMENTGATEWAYPASSWORD,
        :test => PAYMENTGATEWAYMODE
      )
        
      if not gateway
        raise AuthenticationFailed, 'Authentication with CIM Gateway could not be completed.'
      end
      return gateway
    end
  end
end

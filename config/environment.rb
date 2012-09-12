# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
CamDon::Application.initialize!

module ActiveMerchant
  module Utils
    
    if Rails.env == "development" || Rails.env == "test"
      puts "USING DEV KEYS"
      PAYMENTGATEWAYLOGIN = ""
      PAYMENTGATEWAYPASSWORD = ""
      PAYMENTGATEWAYMODE = true
      ANETMODE = :test
    else
      puts "USING LIVE KEYS"
      PAYMENTGATEWAYLOGIN = ""
      PAYMENTGATEWAYPASSWORD = ""
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

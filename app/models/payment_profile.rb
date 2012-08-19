require "active_merchant"

class PaymentProfile < ActiveRecord::Base
  include ActiveMerchant::Billing
  include ActiveMerchant::Utils
  
  belongs_to :member
  has_many :invoices
  attr_accessor :address, :credit_card, :bank_account
  validates_presence_of :member_id
  
  def create
    if super and create_payment_profile
      # member.update_attributes({:payment_profile_id => self.id})
      return true
    else
      if self.id
        #destroy the instance if it was creaetd
        self.destroy
      end
      return false
    end
  end
  
  def destroy
    if super and delete_payment_profile
      self.destroy
      return true
    else
      return false
    end
  end
  
  def get_profile_object
    logger.debug("Make gateway")
    @gateway = get_payment_gateway
    if self.payment_type.blank?
      response = @gateway.get_customer_payment_profile(:customer_profile_id => self.member.customer_cim_id, :customer_payment_profile_id => self.payment_cim_id)
      if response.success?
        if response.params["payment_profile"]['payment'].has_key?("credit_card")
          self.payment_type = "Credit Card"
          self.credit_card_number = response.params["payment_profile"]["payment"]["credit_card"]["card_number"]
        elsif response.params["payment_profile"]["payment"].has_key?("bank_account")
          self.payment_type = response.params["payment_profile"]["payment"]["bank_account"]["account_type"].capitalize
          self.bank_routing_number = response.params["payment_profile"]["payment"]["bank_account"]["account_number"]
        end
        if self.save
          return true
        else
          return false
        end
      else
        self.destroy
        return false
      end
    end
    return true
  end
  
  private
  def create_payment_profile
    if self.payment_cim_id
      return false
    end
    if self.credit_card
      logger.debug("Credit Card:: #{self.credit_card.inspect}")
      payment = { :credit_card => self.credit_card }
      self.payment_type = "Credit Card"
      self.credit_card_number = "XXXX#{self.credit_card.number[(self.credit_card.number.length - 4)...self.credit_card.number.length]}"
    elsif self.bank_account
      self.payment_type = "Bank Account"
      self.bank_routing_number = "XXXX#{self.bank_account.account_number[(self.bank_account.account_number.length - 4)...self.bank_account.account_number.length]}"
      logger.debug("BANK ACCOUNT:: #{self.bank_account.inspect}")
      payment = { :bank_account => self.bank_account }
    end
    
    @gateway = get_payment_gateway
    @profile = {
      :customer_profile_id => self.member.customer_cim_id,
      :payment_profile => {
        :payment => payment,
        :bill_to => self.member.billing_address_for_payment_profile
      }
    }

    logger.debug("Here 2.5")
    logger.debug("PROFILE::: #{@profile.inspect}")
    response = @gateway.create_customer_payment_profile(@profile)
    logger.debug("RESPONSE DETAILS::: #{response.inspect}")
    if response.success? and response.params['customer_payment_profile_id']
      self.payment_cim_id = response.params['customer_payment_profile_id']
      self.address = {}
      self.credit_card = {}
      if self.save
        return true
      else
        return false
      end
    end
    logger.debug("Here 3")
    return false
  end
  
  def update_payment_profile
    # @gateway = get_payment_gateway
    # @profile = {:customer_profile_id => self.member.customer_cim_id,
    #   :payment_profile => {:customer_payment_profile_id => self.payment_cim_id,
    #     :payment => {:credit_card => self.credit_card}
    #   }
    # }
    # response = @gateway.update_customer_payment_profile(@profile)
    # if response.success?
    #   self.address = {}
    #   self.credit_card = {}
    #   return true
    # end
    # return false
  end
  
  def delete_payment_profile
    @gateway = get_payment_gateway
    response = @gateway.delete_customer_payment_profile(:customer_profile_id => self.member.customer_cim_id, :customer_payment_profile_id => self.payment_cim_id)
    if response.success?
      return true
    end
    return false
  end
end
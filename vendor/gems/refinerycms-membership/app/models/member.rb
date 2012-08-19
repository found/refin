require 'devise'
require 'active_merchant'

class Member < ActiveRecord::Base
  include ActiveMerchant::Utils
  
  has_many :invoices
  has_many :addresses
  has_many :subscriptions
  has_many :payment_profiles
  has_many :orders
  has_one :contact
  
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email
  attr_accessor :login
  
  attr_accessible :first_name, :last_name, :title, :organization,
    :street_address, :city, :state, :postal_code, :phone, :fax, 
    :website, :customer_cim_id, :donor_number, :email, :password, 
    :password_confirmation, :remember_me, :username, :plugins, :login, :verified, :restrict_emails
   
  has_friendly_id :username, :use_slug => false

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  before_save :dirty_check
  
  after_create :send_out_emails
  
  class << self
    def authentication_keys
      [:login]
    end

    def find_for_database_authentication(conditions)
      value = conditions[authentication_keys.first]
      where(["username = :value OR email = :value", { :value => value }]).first
    end
  end

  def full_name
    return self.first_name + " " + self.last_name
  end

  def initials
    return self.first_name[0].upcase + self.last_name[0].upcase
  end
  
  def billing_address_for_export
    address = Address.find(:first, :conditions => { :member_id => self.id, :address_type => "billing"})
    return false if address.nil?
    str = "#{address.address_1 rescue ""} #{address.address_2 rescue ""}"
  end
  
  def billing_address_for_transaction
    address = Address.find(:first, :conditions => { :member_id => self.id, :address_type => "billing"})
    return {} if address.nil?
    obj = {
      :first_name => (self.first_name || ""),
      :last_name => (self.last_name || ""),
      :address => ("#{address.address_1 rescue ""} #{address.address_2 rescue ""}"),
      :city => (address.city || ""),
      :state => (address.state || ""),
      :zip => (address.postal_code || ""),
      :country => (address.country.country_name || ""),
      :phone => (self.phone || ""),
      :fax => "",
      :email => self.email,
      :customer_address_id => address.id
    }
    
    return obj
  end
  
  def billing_address_for_payment_profile
    address = Address.find(:first, :conditions => { :member_id => self.id, :address_type => "billing"})
    return {} if address.nil?
    obj = {
      :first_name => (self.first_name || ""),
      :last_name => (self.last_name || ""),
      :address => ("#{address.address_1 rescue ""} #{address.address_2 rescue ""}"),
      :city => (address.city || ""),
      :state => (address.state || ""),
      :zip => (address.postal_code || ""),
      :country => (address.country.country_name || ""),
      :phone => (self.phone || ""),
      :fax => "",
      :email => self.email
    }
    
    return obj
  end

  def billing_address
    address = Address.find(:first, :conditions => { :member_id => self.id, :address_type => "billing"})
    return false if address.nil?
    str = "#{address.address_1 rescue ""} #{address.address_2 rescue ""}, #{address.city rescue ""}, #{address.state rescue ""} #{address.postal_code rescue ""}, #{address.country.country_name rescue ""}"
    return str
  end

  def billing_address_object
    address = Address.find(:first, :conditions => { :member_id => self.id, :address_type => "billing"})
    return nil if address.nil?
    return address.id
  end

  def billing_address_from_db
    address = Address.find(:first, :conditions => { :member_id => self.id, :address_type => "billing"})
    return nil if address.nil?
    return address
  end

  def mailing_address_from_db
    address = Address.find(:first, :conditions => { :member_id => self.id, :address_type => "mailing"})
    return nil if address.nil?
    return address
  end

  def create
    if super and create_cim_profile
      return true
    else
      if self.id
        self.destroy
      end
      return false
    end
  end

  def update
    if update_cim_profile and super
      logger.debug("Returning true in update")
      return true
    end
    return false
  end

  def destroy
    if delete_cim_profile and super
      return true
    end
    return false
  end

  def cart
    return Order.where( :order_state_id => 1, :member_id => self.id ).last rescue nil
  end

  def get_payment_profiles
    payment_profiles = []
    self.payment_profiles.each do |pro|
      if pro.get_profile_object
        if !pro.credit_card_number.blank?
          payment_profiles.push(["#{pro.payment_type} - #{pro.credit_card_number}", pro.id])
        else 
          payment_profiles.push(["#{pro.payment_type} - #{pro.bank_routing_number}", pro.id])
        end
      end
    end
    return payment_profiles
  end

  def submitted_contact_form
    return true if self.contact
    return false
  end
  
  def create_cim_profile
    @gateway = get_payment_gateway

    @donor = {:profile => user_profile}

    response = @gateway.create_customer_profile(@donor)
    logger.debug("Response:::\n #{response.inspect}")
    if response.success? and response.authorization
      update_attributes({:customer_cim_id => response.authorization})
      return true
    else
      if response.params["messages"]["message"]["code"] == "E00039"
        if self.update_attributes({:customer_cim_id => response.params["messages"]["message"]["text"].gsub("A duplicate record with ID ", "").gsub(" already exists.", "").to_i})
          if self.update_cim_profile
            return true
          else
            return false
          end
        end
      end
    end
    return false
  end

  def update_cim_profile
    logger.debug("Here in updating cim profile")
    @gateway = get_payment_gateway
    logger.debug("Update gateway: #{@gateway.inspect}")
    response = @gateway.update_customer_profile(:profile => user_profile.merge({
      :customer_profile_id => self.customer_cim_id
    }))
    logger.debug("in update cim profile.  Reponse: #{response.success?}")
    if response.success?
      return true
    else
      if self.customer_cim_id.nil?
        return false
      else
        logger.debug("Failed update: #{response.inspect}")
        if self.delete_cim_profile
          logger.debug("couldn't delete.")
          if self.create_cim_profile
            return true
          else
            logger.debug("Cascading FAILURE: #{response.inspect}")
            return false
          end
        else
          logger.debug("Delete Failed.")
          return false
        end
      end
    end
  end

  def delete_cim_profile
    logger.debug("in delete.")
    if self.customer_cim_id.nil?
      return false
    end
    @gateway = get_payment_gateway

    response = @gateway.delete_customer_profile(:customer_profile_id => self.customer_cim_id)
    logger.debug(response.inspect)
    if response.success?
      return true
    else
      self.update_attribute(:customer_cim_id, nil)
      if response.params["messages"]["message"]["code"] == "E00040"
        logger.debug("couldn't find the CIM object.  ")
        if self.create_cim_profile
          return true
        else
          return false
        end
      else
        return false
      end
    end
  end

  def user_profile
    return {
      :merchant_customer_id => self.id, 
      :email => self.email, 
      :description => self.full_name
    }
  end
  
  def signup_to_newsletter
    begin
      @contact = Contact.find_by_email(self.email)
      if @contact
        @contact.update_attribute(:newsletter_recipient, true)
      else
        @address = self.billing_address_for_transaction
        @contact = Contact.create(
          :email => self.email,
          :first_name => self.first_name,
          :last_name => self.last_name,
          :address_1 => @address[:address],
          :city => @address[:city],
          :state => @address[:state],
          :postal_code => @address[:zip],
          :member_id => self.id,
          :newsletter_recipient => true,
          :country => @address[:country]
        )
      end
      return true
    rescue Exception => e
      logger.debug("Error: #{e.message}")
      return true
    end
  end
  
  def unsubscribe_to_newsletter
    begin
      @contact = Contact.find_by_email(self.email)
      if @contact
        @contact.update_attribute(:newsletter_recipient, false)
      else
        @address = self.billing_address_for_transaction
        @contact = Contact.create(
          :email => self.email,
          :first_name => self.first_name,
          :last_name => self.last_name,
          :address_1 => @address[:address],
          :city => @address[:city],
          :state => @address[:state],
          :postal_code => @address[:zip],
          :member_id => self.id,
          :newsletter_recipient => false,
          :country => @address[:country]
        )
      end
      
    rescue Exception => e
      logger.debug("Error: #{e.message}")
    end
    
  end
  
  protected
  
  def send_out_emails
    MembershipMailer.application_confirmation_member(self).deliver
  end
  
  def user_name_length_check
    str = URI::escape(self.first_name.gsub("&", "&amp;") + " " + self.last_name)
    if str.length > 31
      self.first_name = self.first_name[0] + "."
    end
  end
  
  def dirty_check
    user_name_length_check()
    self.username = self.email
    logger.debug("changed: #{self.changed}")
    if self.changed? && (Time.now.to_i - (self.created_at.nil? ? Time.now.to_i : self.created_at.to_i) > 1.minute.to_i) && !self.changed.include?("verified") && !self.changed.include?("last_sign_in_at") && !self.changed.include?("current_sign_in_at") && !self.changed.include?("sign_in_count") && !self.changed.include?("reset_password_token") && !self.changed.include?("remember_token") && !self.changed.include?("remember_created_at") && !self.changed.include?("donor_number")
      self.verified = 0 
      logger.debug("Changed stuff: #{self.changed}")
      MembershipMailer.member_update_profile_notify_admin(self, self.changed).deliver
      # if !self.restrict_emails?
      #         MembershipMailer.member_update_profile(self).deliver
      #       end
    end
  end
end
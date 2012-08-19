class Address < ActiveRecord::Base
  belongs_to :member
  belongs_to :country
  
  attr_accessible  :member_id, :address_1, :address_2, :city, :state, :country_id, :postal_code, :address_type
  
  before_save :check_for_dirty
  
  def is_local?
    city = self.city
    city = city.downcase
    city = city.gsub(" ", "")
    
    if city == "harrisonburg"
      return true
    else
      return false
    end
  end
  
  protected
  def check_for_dirty
    logger.debug("Changed Address: #{self.changed}")
    if self.changed? && (Time.now.to_i - (self.created_at.to_i || Time.now.to_i) > 1.minute.to_i)
      if self.member.verified?
        self.member.update_attribute(:verified, 0)
      end
      if !self.id.nil?
        MembershipMailer.member_update_profile_notify_admin(self.member, ["#{self.address_type} address"]).deliver
        if !self.member.restrict_emails?
          MembershipMailer.member_update_profile(self.member).deliver
        end
      end
    end
  end
end
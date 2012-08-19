class SubscriptionAdjustment < ActiveRecord::Base
  belongs_to :subscription
  belongs_to :donation_adjustment
  after_create :deliver_notification
  
  protected
  
  def deliver_notification
    if self.subscription
      MembershipMailer.subscription_adjustment_mailer(self).deliver
      return true
    else
      return false
    end
  end
end
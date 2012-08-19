class SubscriptionTransaction < ActiveRecord::Base
  belongs_to :subscription
  
  after_create :mediate_notifications
  
  protected
  
  def mediate_notifications
    # notify the user that their transaction has been processed for this Subscription on ARB
    # notify the user if the subscription did not successfully go through.
    if self.success?
      # notify user they have a new invoice available in their donor dashboard
      logger.debug("This is good.")
      MembershipMailer.monthly_receipt_mailer(self.subscription.invoice).deliver
      return true
    else
      # notify donor that the subscription crapped out.
      MembershipMailer.monthly_receipt_failed_mailer(self.subscription.invoice).deliver
      logger.debug("This is crap.") 
      return true
    end
  end
end

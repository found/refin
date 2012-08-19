class DonationAdjustment < ActiveRecord::Base
  include ActiveMerchant::Billing
  include ActiveMerchant::Utils
  
  belongs_to :program
  after_create :update_donations
  
  
  protected 
  
  def update_donations
    logger.debug("In callback after create: DonationAdjustment")
    @subscriptions = Subscription.where(:program_id => self.program_id)
    logger.debug("Updating #{@subscriptions.count} subscriptions")
    
    @subscriptions.each do |s|
      logger.debug("Adjusting #{s.id}")
      if s.active? && s.member_id != 48
        logger.debug("#{s.id} is active")
        begin
          orig_amount = s.amount
          orig_amount = s.subscription_adjustments.select{|a| a.confirmed != nil}.last.amount if s.subscription_adjustments && !s.subscription_adjustments.select{|a| a.confirmed != nil}.empty?
          new_amount = ((orig_amount * ((self.percentage_change.to_f / 100) + 1)).to_f).ceil
          SubscriptionAdjustment.create(:subscription_id => s.id, :donation_adjustment_id => self.id, :original_amount => orig_amount, :amount => new_amount, :token => SecureRandom.hex(16))
        rescue Exception => e
          logger.debug("Issue with updating #{e.message}")
        end
      end
    end
  end
end

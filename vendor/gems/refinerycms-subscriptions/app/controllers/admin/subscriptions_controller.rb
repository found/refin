module Admin
  class SubscriptionsController < Admin::BaseController
    require 'csv'
    
    # crudify :subscription, :xhr_paging => true

    def index
      @active = Subscription.active
      @inactive = Subscription.inactive
      @adjustments = DonationAdjustment.all
      @all_adjustments = SubscriptionAdjustment.find(:all, :include => [:subscription])
      @subscription_transactions = SubscriptionTransaction.all
    end
    
    def show
      @subscription = Subscription.find(params[:id])
      @member = @subscription.member
    end
    
    def cancel_subscription
      @subscription = Subscription.find(params[:id])
      if @subscription && @subscription.active? && @subscription.cancel_subscription
        MembershipMailer.cancelled_subscription(@subscription.member, @subscription).deliver
        redirect_to "/refinery/subscriptions", :notice => "Subscription #{@subscription.arb_subscription_id} was successfully canceled."
      else
        redirect_to "/refinery/subscriptions", :notice => "Subscription could not be cancelled."
      end
    end
    
    def export_to_csv
      csv_string = CSV.generate do |csv|
        csv << ["account number", "id", "email", "name", "verified", "address", "city", "state", "phone", "zipcode", "country name", "country code", "program code", "program name", "donation type", "billing cycle", "payment method", "payment number", "amount", "timestamp", "status", "cancelled on", "notes" ]
        Subscription.active.each do |s|
          inv = s.invoice
          pro = s.program
          donor = s.member
          if inv && pro && donor 
            csv << [
              (donor.donor_number rescue ""), 
              (inv.id rescue ""), 
              (donor.email rescue ""), 
              (donor.full_name rescue ""), 
              (donor.verified? ? "Yes" : "No"),
              (donor.billing_address_for_export rescue ""), 
              (donor.billing_address_from_db.city rescue ""),
              (donor.billing_address_from_db.state rescue ""),
              (donor.phone rescue ""), 
              (donor.billing_address_from_db.postal_code rescue ""), 
              (donor.billing_address_from_db.country.country_name rescue ""),
              (donor.billing_address_from_db.country.country_code rescue ""),
              (pro.abbreviation rescue ""),
              (pro.program_name rescue ""),
              ("monthly"),
              ("#{inv.subscription.subscription_type.day || '0'}"),
              (inv.payment_method rescue ""),
              (inv.payment_number rescue ""),
              ("#{s.amount rescue ""}"),
              (inv.created_at rescue ""),
              (s.active? ? "active" : "cancelled"),
              (inv.subscription.end_date.strftime("%D") rescue ""),
              (inv.notes rescue "")
            ]
          end
        end
      end

      send_data csv_string, 
        :type => "text/csv; charset=iso-8859-1; header=present", 
        :disposition => "attachment; filename=monthly_donation_export_#{Time.now.strftime("%b_%d_%Y")}.csv"
    end
    
    # Adjustments
    def new_adjustment
      @adjustment = DonationAdjustment.new
    end
    
    def create_adjustment
      if DonationAdjustment.create(params[:donation_adjustment])
        redirect_to "/refinery/subscriptions", :notice => "Adjustment was created successfully"
      else 
        redirect_to :back, :error => "Something went wrong."
      end
    end
    
    def resend_email
      logger.debug("Here")
      @adjustment = SubscriptionAdjustment.find(params[:id])
      if @adjustment
        MembershipMailer.subscription_adjustment_mailer(@adjustment).deliver
        redirect_to :back, :notice => "Adjustment mail re-sent"
      else
        redirect_to :back, :error => "Something went wrong."
      end
    end
  end
end

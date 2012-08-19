class SubscriptionsController < ApplicationController
  before_filter :authenticate_member!, :except => [:silent_post]

  def index
    redirect_to '/donors/me'
    present(@page)
  end

  def show
    @subscription = Subscription.find(params[:id])
    if @subscription.member.id != current_member.id
      redirect_to "/donors/me"
    else
      present(@page)
    end
  end
  
  def cancel_subscription
    @subscription = Subscription.find(params[:id])
    if @subscription && @subscription.active? && @subscription.cancel_subscription
      MembershipMailer.cancelled_subscription(current_member, @subscription).deliver
      redirect_to "/subscriptions/#{params[:id]}", :notice => "Subscription #{@subscription.arb_subscription_id} was successfully canceled."
    else
      redirect_to "/subscriptions/#{params[:id]}", :notice => "Subscription could not be cancelled.  Please call CAM for assistance."
    end
  end
  
  def change_payment
    @subscription = Subscription.find(params[:id])
    redirect_to root_path unless current_member
    if @subscription
      redirect_to root_path unless current_member.id == @subscription.member.id
    else
      redirect_to root_path, :notice => "Subscription was not found"
    end
  end
  
  def update_payment
    @subscription = Subscription.find(params[:id])
    redirect_to root_path unless current_member
    redirect_to root_path unless current_member.id == @subscription.member.id
    
    if @subscription.update_sub_payment(params)
      redirect_to subscription_path(@subscription), :notice => "You have successfully updated your payment information!"
    else
      redirect_to :back, :notice => "Something went wrong.  Please check your payment information and try again!"
    end
  end
  
  def silent_post
    logger.debug("Silent Post Mane!")
    cb = CallbackHandler::SilentPost.new(params)
    logger.debug "CB: #{cb.inspect}"
    if cb.parse
      MembershipMailer.deliver_silent_post(params).deliver
    end
    render :text => "ok"
  end
  
  def silent_post_test
    
  end
  
  def monthly_receipt
    redirect_to :back, :notice => "Error" unless params[:id]
    @sub_tranny = SubscriptionTransaction.find(params[:id], :include => [:subscription])
    @invoice = Invoice.find(@sub_tranny.subscription.invoice, :include => [:subscription, :order, :receipt])
    @subscription = @sub_tranny.subscription
    if @invoice && @sub_tranny && @subscription
      redirect_to :back, :notice => "Sorry, you're not authorized to view that." unless @invoice.member.id == current_member.id
    else
      redirect_to :back, :notice => "Sorry, I couldn't find that receipt"
    end
  end
  
  def receipt_range
    @trannies = []
    @start_date = Time.strptime(params["range"]["start"], "%m/%d/%Y")
    @end_date = Time.strptime(params["range"]["end"], "%m/%d/%Y")
    @subscription = Subscription.find(params[:id])
    @invoice = @subscription.invoice
    redirect_to :back, :notice => "There was a problem.  Please contact CAM" unless @subscription.member_id == current_member.id
    
    @subscription.subscription_transactions.each do |t|
      if t.created_at >= (@start_date) && t.created_at <= (@end_date + 1.day)
        @trannies << t
      end
    end
    
    redirect_to :back, :notice => "Sorry, nothing was found within that date range." if @trannies.empty?
  end

protected

  def find_all_subscriptions
    @subscriptions = Subscription.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/subscriptions").first
  end
  
end

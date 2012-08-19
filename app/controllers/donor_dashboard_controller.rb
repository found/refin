class DonorDashboardController < ApplicationController
  before_filter :authenticate_member!
  def me
    @donor = current_member
    @billing_address = Address.find(:first, :conditions => {:member_id => current_member.id, :address_type => "billing"})
    @mailing_address = Address.find(:first, :conditions => {:member_id => current_member.id, :address_type => "mailing"})
  end
  
  def edit_my_profile
    @referer = request.env["HTTP_REFERER"]
    @donor = current_member
  end
  
  def update_my_profile
    @donor = Member.find(current_member.id)
    @address = @donor.addresses.select{|a| a.address_type == "billing"}[0]
    
    if @donor.update_attributes(params[:member])
      @address.update_attributes(params[:address])
      if params[:referer] && params[:referer] != ""
        if params[:referer].match("donate") && current_cart.has_items?
          redirect_to "#{params[:referer]}#checkout"
        else
          redirect_to params[:referer]
        end
      else
        redirect_to :back
      end
    else
      redirect_to :back
    end
  end
  
  def billing_address_view
    @donor = Member.find(current_member.id, :include => [:addresses])
  end
  
  def edit_my_password
    @donor = current_member
  end
  
  def update_my_password
    @donor = current_member
    if params[:member][:password] == params[:member][:password_confirmation]
      @donor.password = params[:member][:password]
      @donor.password_confirmation = params[:member][:password_confirmation]
      if @donor.save
        MembershipMailer.member_password_changed(@donor).deliver
        redirect_to :action => "me"
        return
      end
    else
      redirect_to :action => "edit_my_password", :notice => "Password and Confirmation do not match."
      return
    end
  end
  
  def my_subscriptions
    @donor = Member.find(current_member.id, :include => [:subscriptions, {:subscriptions => :program, :subscriptions => :subscription_type}])
  end
  
  def remove_from_newsletter
    @user = Member.find(params[:id])
    if @user && @user.contact && @user.id == current_member.id
      @user.contact.update_attribute(:newsletter_recipient, false)
      MembershipMailer.newsletter_removal_notify_admin(@user.contact).deliver
      redirect_to :back, :notice => "You've been successfully removed from the newsletter list."
    else
      redirect_to :back, :error => "Something went wrong."
    end
  end
  
  def accept_adjustment
    @sub_adj = SubscriptionAdjustment.find_by_token(params[:id])
    
    if @sub_adj && @sub_adj.subscription.update_sub_amount(@sub_adj.amount)
      @sub_adj.update_attributes({:confirmed => DateTime.now, :token => nil})
      MembershipMailer.accepted_subscription_adjustment_mailer(@sub_adj).deliver
      redirect_to "/pages/donation-adjustment-confirmed"
    else
      redirect_to "/", :error => "Something went wrong.  Please contact CAM."
    end
  end
  
  def deny_adjustment
    @sub_adj = SubscriptionAdjustment.find_by_token(params[:id])
    
    if @sub_adj
      @sub_adj.update_attributes({:confirmed => nil, :token => nil})
      redirect_to "/pages/donation-adjustment-denied"
    else
      redirect_to "/", :error => "Something went wrong.  Please contact CAM."
    end
  end

end

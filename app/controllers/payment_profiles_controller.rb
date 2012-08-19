require 'active_merchant'

class PaymentProfilesController < ApplicationController
  include ActiveMerchant::Billing
  include ActiveMerchant::Utils
  
  def index
    redirect_to new_member_session_path unless current_member
    @payment_profiles = PaymentProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @payment_profiles }
    end
  end

  def show
    redirect_to new_member_session_path unless current_member
    @payment_profile = PaymentProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @payment_profile }
    end
  end
  
  def my_profiles
    redirect_to new_member_session_path unless current_member
    @payment_profiles = []
    @gateway = get_payment_gateway
    PaymentProfile.find(:all, :conditions => { :member_id => current_member.id }, :include => [:member]).each do |pro|
      response = @gateway.get_customer_payment_profile(:customer_profile_id => pro.member.customer_cim_id, :customer_payment_profile_id => pro.payment_cim_id)
      logger.debug(response.inspect)
      if response.success?
        response.params["payment_profile"]["db_object_id"] = pro.id
        @payment_profiles.push(response.params["payment_profile"]) 
      else
        pro.destroy
      end
    end
    logger.debug("\n\nPayment Profiles are all loaded:  Count - #{@payment_profiles.count} Inspection: #{@payment_profiles.inspect}\n\n")
  end

  def new
    redirect_to new_member_session_path unless current_member
    if !current_member.billing_address
      logger.debug("No addresses added")
      redirect_to :controller => :addresses, :action => :new
    end 
    @payment_profile = PaymentProfile.new
  end

  def edit
    redirect_to new_member_session_path unless current_member
    @payment_profile = PaymentProfile.find(params[:id])
  end

  def create
    redirect_to new_member_session_path unless current_member
    @payment_profile = PaymentProfile.new
    if params['cc']
      cc = ActiveMerchant::Billing::CreditCard.new(
        :first_name => current_member.first_name,
        :last_name => current_member.last_name,
        :number => params[:cc][:number],
        :month => params[:cc]['expiry_month(2i)'],
        :year => params[:cc]['expiry_year(1i)'],
        :verification_value => params[:cc][:ccv]
      )
      logger.debug(cc.inspect)
    
      @payment_profile.credit_card = cc
    elsif params['bank']
      check = ActiveMerchant::Billing::Check.new(
        :account_type => params[:bank]["account_type"].downcase.to_sym,
        :account_number => params[:bank]["account_number"],
        :routing_number => params[:bank]["routing_number"],
        :first_name => current_member.first_name,
        :last_name => current_member.last_name,
      )
      @payment_profile.bank_account = check
    else
      redirect_to :back, notice => "Fill out some jank!"
    end
    @payment_profile.address = current_member.billing_address
    @payment_profile.member_id = current_member.id
    
    logger.debug("Payment Profile: #{@payment_profile.inspect}")
    respond_to do |format|
      if @payment_profile.save
        redirect_to "/payment_profile/my_profiles"
        return
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @payment_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /payment_profiles/1
  # PUT /payment_profiles/1.xml
  def update
    redirect_to new_member_session_path unless current_member
    @payment_profile = PaymentProfile.find(params[:id])

    respond_to do |format|
      if @payment_profile.update_attributes(params[:payment_profile])
        format.html { redirect_to(@payment_profile, :notice => 'Payment profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @payment_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_profiles/1
  # DELETE /payment_profiles/1.xml
  def destroy
    redirect_to new_member_session_path unless current_member
    @payment_profile = PaymentProfile.find(params[:id])
    @payment_profile.destroy

    respond_to do |format|
      format.html { redirect_to "/donors/me" }
      format.xml  { head :ok }
    end
  end
end

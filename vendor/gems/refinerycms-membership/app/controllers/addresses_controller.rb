class AddressesController < ApplicationController
  def index
   @addresses = Address.all 
  end
  
  def my_addresses
    @billing_address = Address.find(:first, :conditions => {:member_id => current_member.id, :address_type => "billing"})
    @mailing_address = Address.find(:first, :conditions => {:member_id => current_member.id, :address_type => "mailing"})
  end
  
  def new
    @address = Address.new
    if current_member.addresses.count == 1
      @address.address_type = ["billing", "mailing"].delete_if{|a| a == current_member.addresses.first.address_type} rescue "billing"
    elsif current_member.addresses.count == 2
      redirect_to :action => "my_addresses", :notice => "You already have a mailing and a billing address!"
      return
    end
  end
  
  def create
    @address = Address.new(params[:address])
    @address.member_id = current_member.id
    @address.address_type = params[:address][:address_type].downcase
    
    if @address.save
      redirect_to '/addresses/my_addresses'
      return
    else 
      logger.debug(@address.errors.inspect)
      render :action => "new", :notice => "Address creation failed."
      return
    end
  end
  
  def edit
    @address = Address.find(params[:id])
  end
  
  def update
    @address = Address.find(params[:id])
    
    if @address.update_attributes(params[:address])
      redirect_to "/addresses/my_addresses"
      return
    else
      render :action => "edit", :notice => "Address update failed."
      return
    end
  end
end
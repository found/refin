class OrdersController < ApplicationController

  before_filter :find_all_orders
  before_filter :find_page

  def index
    present(@page)
  end

  def show
    @order = Order.find(params[:id])
    present(@page)
  end
  
  def add_program_to_cart
    if params[:id] && params[:amount]
      @order = current_cart
      donation = Program.find(params[:id])
      if donation
        if params[:quick_donate] && params[:quick_donate][:quick_amount]
          logger.debug("quick donate")
          amount = params[:quick_donate][:quick_amount]
          type = "one-time"
        else
          amount = params[:amount].to_f / 100
          type = params[:contribution][:type]
        end
        logger.debug("Amount: #{amount} and Type: #{type}")
        if @order.add_item(donation, 1, amount, type)
          redirect_to "/donate", :notice => "Your donation has been added to your basket."
          return
        else 
          redirect_to "/donate", :notice => "We apologize, at this time our website is not able to process large donations. Please call us at 330-893-2428 to donate via credit card, or mail your donation to Christian Aid Ministries, P.O. Box 360, Berlin, OH 44610. Thank  you for your generosity!"
        end
      end
    else
      logger.debug("User Agent: " + request.env['HTTP_USER_AGENT'])
      if request.env['HTTP_USER_AGENT'].downcase.include?("googlebot")
        redirect_to "/donate", :notice => "You must select a program before adding it to your cart!"
      else
        redirect_to "/donate", :notice => "You must select a program before adding it to your cart!"
      end
    end
  end
  
  def add_program_to_cart_and_checkout
    logger.debug("Hi!")
    begin params #&& params[:id] && (params[:quick_donate][:quick_amount] || params[:amount])
      logger.debug("0")
      @order = current_cart
      logger.debug("1")
      donation = Program.find(params[:id])
      if donation
        logger.debug("2")
        logger.debug("in donation")
        if params[:quick_donate] && params[:quick_donate][:quick_amount]
          logger.debug("3")
          logger.debug("quick donate")
          amount = params[:quick_donate][:quick_amount]
          type = "one-time"
        else
          logger.debug("4")
          logger.debug("regular donate")
          amount = params[:amount].to_f / 100
          type = params[:contribution][:type]
        end
        logger.debug("5")
        logger.debug("Amount: #{amount} and Type: #{type}")
        if @order.add_item(donation, 1, amount, type)
          logger.debug("6")
          if current_member
            redirect_to '/donate#checkout'
          else 
            redirect_to "/donate"
          end
          return
        else 
          redirect_to "/donate", :notice => "We apologize, at this time our website is not able to process large donations. Please call us at 330-893-2428 to donate via credit card, or mail your donation to Christian Aid Ministries, P.O. Box 360, Berlin, OH 44610. Thank  you for your generosity!"
        end
      else
        logger.debug("bye 2")
        redirect_to :back, :notice => "There was an error"
      end
    rescue Exception => e
      logger.debug("bye #{e.message}")
      redirect_to :back, :notice => "There was an error"
    end
  end
  
  def view_cart
    @order = current_cart
    session[:order_id] = @order.id
  end
  
  def update_order
    params[:line_items].each do |key, val|
      logger.debug("Key: #{key.inspect} Val: #{val.inspect}")
      li = LineItem.find(key)
      if val.to_i == 0
        li.destroy
      elsif li && li.quantity != val
        li.update_attribute(:quantity, val)
      end
    end
    redirect_to :action => 'view_cart'
    return
  end
  
  def remove_from_cart
    begin
      if current_cart.order_state_id != 1
        redirect_to :back, :notice => "This cart has already been processed."
      end
      current_cart.remove_item(params[:id])
    rescue 
      redirect_to :back and return
    end
    redirect_to :back and return
  end
  
  def checkout
    if !current_member
      redirect_to '/members/register', :notice => "Please create an account to donate!"
    else
      @order = current_cart
      if !@order.has_subscriptions? && @order.has_one_times?
        redirect_to "/orders/checkout_one_times"
      end
    end
  end
  
  def process_subscriptions
    if current_member
      logger.debug("TOC: #{params[:contribution][:toc]}")
      if !params[:contribution][:toc] || params[:contribution][:toc] == "0" || params[:contribution][:toc] == ""
        logger.debug("redirecting because of ToC")
        redirect_to "/donate#checkout", :notice => "You must agree to the terms and conditions before continuing." and return
      end
      
      logger.debug("newsletter: #{params[:contribution][:newletter_recieve]}")
      logger.debug("newsletter: #{params[:contribution]["newletter_recieve"]}")
      
      @order = current_cart
      if @order.process_subscriptions(params)
        if @order.has_one_times?
          if @order.process_one_times(params)
            if params[:contribution][:newsletter_receive] == "on"
              # the user does not want to receive the newsletter.
              # get the contact, which will exist.
              # cantact.update_attributes(:newsletter_recipient, false)
              # call email you created to notify CAM admin about no newsletter
              # continue with rest of method below.
                if @order.member && @order.member.contact
                  @order.member.contact.update_attribute(:newsletter_recipient, false)
                  MembershipMailer.newsletter_removal_notify_admin(@order.member.contact).deliver
                end
            end
              
            session[:order_id] = nil
            respond_to do |format|
              format.html { redirect_to "/orders/complete", :notice => "Your subscription was created.  You can view your invoices from the Donor Dashboard." }
              format.js { render :json => "success".to_json }
            end
          else
            respond_to do |format|
              format.html { redirect_to :back, :notice => "Please check your payment information before proceeding." }
              format.js { render :text => "failure".to_json }
            end
          end
        else 
          session[:order_id] = nil
          respond_to do |format|
            format.html { redirect_to "/orders/complete", :notice => "Your subscription was created.  You can view your invoices from the Donor Dashboard." }
            format.js { render :json => "success".to_json }
          end
        end
      else
        respond_to do |format|
          format.html { redirect_to '/donate#checkout', :notice => "Please check your payment information before proceeding.  Your payment method may expire before the subscribtion begins." }
          format.js { render :text => "failure".to_json }
        end
      end
    end
  end
  
  def process_one_times
    if current_member
      @order = current_cart
      if @order.process_one_times(params)
        if params[:contribution][:newsletter_receive] == "on"
          # the user does not want to receive the newsletter.
          # get the contact, which will exist.
          # cantact.update_attributes(:newsletter_recipient, false)
          # call email you created to notify CAM admin about no newsletter
          # continue with rest of method below.
            if @order.member && @order.member.contact
              @order.member.contact.update_attribute(:newsletter_recipient, false)
              MembershipMailer.newsletter_removal_notify_admin(@order.member.contact).deliver
            end
        end
        session[:order_id] = nil
        respond_to do |format|
          format.html { redirect_to "/orders/complete", :notice => "Your subscription was created.  You can view your invoices from the Donor Dashboard." }
          format.js { render :json => "success".to_json }
        end
      else
        respond_to do |format|
          format.html { redirect_to "/donate#checkout", :notice => "Please check your payment information before proceeding." }
          format.js { render :text => "failure".to_json }
        end
      end
    else
      redirect_to '/members/register', :notice => "Please create an account to donate!"
    end
  end
  
  def complete
    session[:order_id] = nil
  end
  
  def export_to_csv
    
  end
  
protected

  def find_all_orders
    @orders = Order.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/orders").first
  end

end

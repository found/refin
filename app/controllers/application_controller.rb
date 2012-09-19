class ApplicationController < ActionController::Base
  # before_filter :redirect_to_non_ssl
  
  def redirect_to_non_ssl
     # redirect_to :protocol => "http://" #unless (!request.ssl? or local_request?)
  end
  
  def current_cart
    logger.debug("in current cart")
     if session[:order_id] && Order.exists?(session[:order_id])
       order = Order.find(session[:order_id])
       logger.debug("Time: #{Time.now.to_i - 6.hours.to_i} > #{order.updated_at.to_i} == #{(Time.now.to_i - 6.hours.to_i) > order.updated_at.to_i}")
       if order.order_state_id == 2 || order.order_state_id == 3 && (Time.now.to_i - 6.hours.to_i) > order.updated_at.to_i
         logger.debug("Create 1")
         order = Order.create
       end
     elsif current_member && current_member.cart
       order = current_member.cart
       logger.debug("Time: #{Time.now.to_i - 6.hours.to_i} > #{order.updated_at.to_i} == #{(Time.now.to_i - 6.hours.to_i) > order.updated_at.to_i}")
       if order.order_state_id == 2 || order.order_state_id == 3 && (Time.now.to_i - 6.hours.to_i) > order.updated_at.to_i
         logger.debug("Create 2")
         order = Order.create
       end
     else
       logger.debug("Create 3")
       order = Order.create
     end
     
     if current_member
       logger.debug("Updating with user.")
       order.update_attribute(:member_id, current_member.id)
     end
     
     session[:order_id] = order.id
     logger.debug("CART ID: #{order.id}")
     return order
   end
   
   def form_submit
    
   end
  
end

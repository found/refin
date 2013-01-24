module ApplicationHelper
  def site_var(var_name)
    var = RefinerySetting.find_by_name(var_name)
    return var.value if var
    return ""
  end
  
  def money_from_decimal(dec)
    str = "$"
    if dec.to_s.split(".")[1].length == 1
      str += dec.to_s + "0"
    elsif dec.to_s.split(".").count == 1
      str += dec.to_s + ".00"
    else 
      str += dec.to_s
    end
    return str
  end
  
  def refinery_setting(key, alt)
    RefinerySetting.find_by_name(key).value rescue alt
  end
  
  def shorten (string, count = 30)
  	if string.length >= count 
  		shortened = string[0, count]
  		splitted = shortened.split(/\s/)
  		words = splitted.length
  		splitted[0, words-1].join(" ") + ' ...'
  	else 
  		string
  	end
  end
  
  def current_cart
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
end

class SessionsController < ::Devise::SessionsController

  before_filter :clear_unauthenticated_flash, :only => [:new]
  after_filter :set_cart_association, :only => [:create]
  
  def create
    super
  rescue ::BCrypt::Errors::InvalidSalt, ::BCrypt::Errors::InvalidHash
    flash[:error] = t('password_encryption', :scope => 'users.forgot')
    redirect_to new_user_password_path
  end

protected
  # We don't like this alert.
  def clear_unauthenticated_flash
    if flash.keys.include?(:alert) and flash.values.any?{|v|
      ['unauthenticated', t('unauthenticated', :scope => 'devise.failure')].include?(v)
    }
      flash.delete(:alert)
    end
  end

  def set_cart_association
    logger.debug("In sessions controller#set_cart_association")
    if session[:order_id] && Order.exists?(session[:order_id])
      @order = Order.find(session[:order_id])
    elsif current_member && current_member.orders
      @order = current_member.orders.last
      logger.debug("getting current members order from db.")
    else
      @order = Order.new
      @order.save
      logger.debug("created new order")
    end
    
    if current_member && @order
      @order.member = current_member
      @order.save
      session[:order_id] = @order.id
    elsif current_member
      @order = Order.create(:member_id => current_member.id)
      session[:order_id] = @order.id
    else
      @order = Order.create
      session[:order_id] = @order.id
    end
  end
end

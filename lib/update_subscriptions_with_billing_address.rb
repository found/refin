puts "USING LIVE KEYS"
PAYMENTGATEWAYLOGIN = "4rm6gL9TQE"
PAYMENTGATEWAYPASSWORD = "46aVuA5B49P8h5M3"
ANETMODE = :live

puts "Starting"
@subscriptions = Subscription.all.reject{ |s| !s.active? }

@subscriptions.each do |s|
  puts "ID: #{s.id}"
  
  @gateway = AuthorizeNet::ARB::Transaction.new(PAYMENTGATEWAYLOGIN, PAYMENTGATEWAYPASSWORD, :gateway => ANETMODE)
  response = @gateway.get_status(s.arb_subscription_id)
  puts "got status: #{response.subscription_status}"
  case response.subscription_status
  when "canceled"
    if !s.active?
      if s.update_attributes({:active => false, :end_date => Time.now})
        puts "was cancelled, updated to reflect"
      end
    else
      puts "cancelled, but got through it."
    end
  when "active"
    sub = s.build_subscription_object_for_update(s.amount, s.arb_subscription_id)
    @gateway = AuthorizeNet::ARB::Transaction.new(PAYMENTGATEWAYLOGIN, PAYMENTGATEWAYPASSWORD, :gateway => ANETMODE)
    response = @gateway.update(sub)
    if response.success?
        puts "Updated good!"
    end
  when "terminated"
    if !s.active?
      if s.update_attributes({:active => false, :end_date => Time.now})
        puts "was terminated, updated to reflect"
      end
    else
      puts "was terminated, but got through it."
    end
  when "suspended"
    if s.update_attributes({:active => false, :end_date => Time.now})
      puts "was suspended, updated to reflect"
    end
  else
    puts " i have no idea...."
  end
end
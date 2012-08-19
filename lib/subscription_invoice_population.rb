Subscription.all.each do |s|
  # ok, so we have a subscription
  # lets see how many cycles its been through
  start_date = Date.strptime(s.start_date, "%Y-%m-%d")
  
  day_of_billing = s.subscription_type.day
  
  if (start_date > Date.today) || (s.end_date == nil && s.active? == false)
    # billing has not happened yet
  else
    month_count = 0
    date_that_we_iterate_on = s.end_date || Date.today
    payment_count = 1
    while date_that_we_iterate_on >= start_date
      payment_count += 1
      date_that_we_iterate_on -= 1.month
    end
    
    date_that_we_iterate_on = s.end_date || Date.today
    
    while date_that_we_iterate_on >= start_date
      month_count += 1
      date_that_we_iterate_on -= 1.month
      
      # need to get subscription amount while being cognizant of the adjustments
      if s.subscription_adjustments
        if s.subscription_adjustments.last && s.subscription_adjustments.last.confirmed && s.subscription_adjustments.last.confirmed < date_that_we_iterate_on
          amount = s.subscription_adjustments.last.amount
        end
      else
        amount = s.amount
      end
      
      sub_tranny = SubscriptionTransaction.create({
        subscription_id: s.id,
        response_code: 1,
        response_reason: "This transaction has been approved",
        transaction_id: 0000000000,
        payment_count: payment_count,
        success: true,
        amount: s.amount
      })
      
      sub_tranny.update_attribute(:created_at, ((start_date + (payment_count - 2).months)).beginning_of_day)
      payment_count -= 1
    end
    
    puts "Subscription ##{s.id} has been billed #{month_count} times"
  end
end

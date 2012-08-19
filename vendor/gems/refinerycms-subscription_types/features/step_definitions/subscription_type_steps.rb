Given /^I have no subscription_types$/ do
  SubscriptionType.delete_all
end

Given /^I (only )?have subscription_types titled "?([^\"]*)"?$/ do |only, titles|
  SubscriptionType.delete_all if only
  titles.split(', ').each do |title|
    SubscriptionType.create(:title => title)
  end
end

Then /^I should have ([0-9]+) subscription_types?$/ do |count|
  SubscriptionType.count.should == count.to_i
end

Given /^I have no orders$/ do
  Order.delete_all
end


Then /^I should have ([0-9]+) orders?$/ do |count|
  Order.count.should == count.to_i
end

Given /^I have no emails$/ do
  Email.delete_all
end

Given /^I (only )?have emails titled "?([^\"]*)"?$/ do |only, titles|
  Email.delete_all if only
  titles.split(', ').each do |title|
    Email.create(:subject => title)
  end
end

Then /^I should have ([0-9]+) emails?$/ do |count|
  Email.count.should == count.to_i
end

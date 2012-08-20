Given /^I have no businesses$/ do
  Business.delete_all
end

Given /^I (only )?have businesses titled "?([^\"]*)"?$/ do |only, titles|
  Business.delete_all if only
  titles.split(', ').each do |title|
    Business.create(:name => title)
  end
end

Then /^I should have ([0-9]+) businesses?$/ do |count|
  Business.count.should == count.to_i
end

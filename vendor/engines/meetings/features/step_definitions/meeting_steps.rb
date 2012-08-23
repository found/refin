Given /^I have no meetings$/ do
  Meeting.delete_all
end

Given /^I (only )?have meetings titled "?([^\"]*)"?$/ do |only, titles|
  Meeting.delete_all if only
  titles.split(', ').each do |title|
    Meeting.create(:title => title)
  end
end

Then /^I should have ([0-9]+) meetings?$/ do |count|
  Meeting.count.should == count.to_i
end

Given /^I have no content_holders$/ do
  ContentHolder.delete_all
end

Given /^I (only )?have content_holders titled "?([^\"]*)"?$/ do |only, titles|
  ContentHolder.delete_all if only
  titles.split(', ').each do |title|
    ContentHolder.create(:title => title)
  end
end

Then /^I should have ([0-9]+) content_holders?$/ do |count|
  ContentHolder.count.should == count.to_i
end

Given /^I have no programs$/ do
  Program.delete_all
end

Given /^I (only )?have programs titled "?([^\"]*)"?$/ do |only, titles|
  Program.delete_all if only
  titles.split(', ').each do |title|
    Program.create(:program_name => title)
  end
end

Then /^I should have ([0-9]+) programs?$/ do |count|
  Program.count.should == count.to_i
end

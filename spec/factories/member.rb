FactoryGirl.define do
  
  factory :member, :class => Member do
    sequence(:email) { |n| "test-#{n}@test.com" }
    username "test@test.com"
    password "qweqwe"
    password_confirmation "qweqwe"
    first_name "Test"
    last_name "User"
    phone "540.331.1772"
    donor_number "111"
  end
end
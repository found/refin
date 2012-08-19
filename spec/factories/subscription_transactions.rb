# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscription_transaction do
      subscription_id 1
      response_code "MyString"
      response_reason "MyString"
      transaction_id 1
      payment_count 1
    end
end
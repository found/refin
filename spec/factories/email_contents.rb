# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :email_content do
      subject "MyString"
      from "MyString"
      bcc "MyString"
      body "MyText"
    end
end
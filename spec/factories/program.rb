FactoryGirl.define do
  
  factory :one_time_program, :class => Program do |p|
    p.sequence(:program_name) { |n| "#{n}" }
    p.abbreviation "IFAF"
    p.monthly_enabled true
    p.monthly_suggested_amounts "10,30,50,70,90"
    p.one_time_enabled true
    p.one_time_suggested_amounts "10,30,50,70,90"
    p.default_donation_type "one-time"
  end

  factory :monthly_program, :class => Program do |p|
    p.sequence(:program_name) { |n| "#{n}" }
    p.abbreviation "IFAF"
    p.monthly_enabled true
    p.monthly_suggested_amounts "10,30,50,70,90"
    p.one_time_enabled true
    p.one_time_suggested_amounts "10,30,50,70,90"
    p.default_donation_type "monthly"
  end
  
end
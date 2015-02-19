FactoryGirl.define do
  factory :apply do
    requirement "requirement"
    site "site"
    facilities "facilities"
    address "address"
    sequence(:p_serial){|n| "SCCSA_#{n}"}
    implement_time Time.now
    implement_date Date.today
    association :user
    association :project
    association :category
  end
end

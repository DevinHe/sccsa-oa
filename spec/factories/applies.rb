FactoryGirl.define do
  factory :apply do
    requirement "requirement"
    site "site"
    facilities "facilities"
    address "address"
    implement_time "implement_time"
    implement_date "implement_date"
    association :user
    association :project
    association :category
  end
end

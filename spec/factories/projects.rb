FactoryGirl.define do
  factory :project do
    sequence(:name){|n| "name#{n}"}
    sequence(:serial){|n| "serial#{n}"}
    association :category
  end
end

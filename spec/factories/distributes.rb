FactoryGirl.define do
  factory :distribute do
    is_distribute true
    association :user
    association :apply
  end
end

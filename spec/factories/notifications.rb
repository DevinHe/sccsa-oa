FactoryGirl.define do
  factory :notification do
    content 'content'
    read false
    association :user
    association :notificationable
  end
end

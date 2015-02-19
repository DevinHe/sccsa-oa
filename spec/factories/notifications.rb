FactoryGirl.define do
  factory :notification do
    content 'content'
    read false
    association :user
    association :notificationable, :factory => :notice
  end
end

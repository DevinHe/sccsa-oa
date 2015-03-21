FactoryGirl.define do
  factory :verify do
    is_pass false
    content 'content'
    association :user
    association :apply
  end

  factory :pass, :parent => :verify do
    is_pass true
  end

  factory :unpass, :parent => :verify do
    content 'time is over'
  end
end

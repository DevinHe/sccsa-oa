FactoryGirl.define do
  factory :user do
    sequence(:name){|n| "name#{n}" }
    sequence(:unit){|n| "unit#{n}" }
    sequence(:email){|n| "email#{n}@sccsa.org" }
    password 'password'
    password_confirmation 'password'
    role_id 1
    is_admin false
  end

  factory :admin, :parent => :user do
    is_admin true
    role_id 3
  end

  factory :applier, :parent => :user do
    role_id 2
  end

  factory :distributor, :parent => :user do
    role_id 3
  end
end

FactoryGirl.define do
  factory :role1 do
    name '无权限'
  end
  factory :role2 do
    name '社区／俱乐部'
  end
  factory :role3 do
    name '配送单位'
  end
  factory :role do
    sequence(:name){|n| "name#{n}"}
  end
end

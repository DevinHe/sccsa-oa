# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :questionnaire do
    content "MyText"
    coaches "MyString"
    population "MyString"
    start_time "2015-04-05 19:13:07"
    situation "MyString"
    other "MyText"
    coache_sitution "MyString"
    coache_other "MyString"
    distribute nil
  end
end

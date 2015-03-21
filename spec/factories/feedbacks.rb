include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :feedback do
    content "content"
    coach   "coach"
    suggestion  "suggestion"
    population  "population"
    distribute_advice "distribute_advice"
    attachment {fixture_file_upload('test.txt', 'text/plain')}
    association :user
    association :apply
  end
end

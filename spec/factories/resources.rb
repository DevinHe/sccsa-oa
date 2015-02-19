include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :resource do
    title "title"
    attachment {fixture_file_upload('test.txt', 'text/plain')}
  end
end

require 'rails_helper'

RSpec.describe "notifications/index", type: :view do
  let(:user) { Factory :user }
  let(:notification1) { Factory :notification }
  let(:notification2) { Factory :notification }
  before(:each) do
    assign(:notifications, [notification1,notification2].paginate(per_page: 10,page: 1))
  end

  it "renders a list of notifications" do
    sign_in user

    render
    assert_select "li", :class => "message-time-list", :count => 2
  end
end

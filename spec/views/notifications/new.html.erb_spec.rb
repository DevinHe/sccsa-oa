require 'rails_helper'

RSpec.describe "notifications/new", type: :view do
  before(:each) do
    assign(:notification, Notification.new(
      :user => nil,
      :content => "MyString",
      :notificationable_type => "MyString",
      :notificationable_id => 1
    ))
  end

  it "renders new notification form" do
    render

    assert_select "form[action=?][method=?]", notifications_path, "post" do

      assert_select "input#notification_user_id[name=?]", "notification[user_id]"

      assert_select "input#notification_content[name=?]", "notification[content]"

      assert_select "input#notification_notificationable_type[name=?]", "notification[notificationable_type]"

      assert_select "input#notification_notificationable_id[name=?]", "notification[notificationable_id]"
    end
  end
end

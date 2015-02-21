require 'rails_helper'

RSpec.describe "notifications/show", type: :view do
  before(:each) do
    @notification = assign(:notification, Notification.create!(
      :user => nil,
      :content => "Content",
      :notificationable_type => "Notificationable Type",
      :notificationable_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Notificationable Type/)
    expect(rendered).to match(/1/)
  end
end

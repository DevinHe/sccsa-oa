require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :unit => "Unit",
        :email => "sccsa@gmail.com",
        :password => "password",
        :is_admin => false,
        :role => 1
      ),
      User.create!(
        :name => "Name1",
        :unit => "Unit",
        :email => "sccsa1@gmail.com",
        :password => "password",
        :is_admin => false,
        :role => 1
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

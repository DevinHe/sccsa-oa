require 'rails_helper'

RSpec.describe "users/new", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :unit => "MyString",
      :email => "sccsa@gmail.com",
      :password => "password",
      :is_admin => false,
      :role_id => 1
    ))
  end

  it "renders new user form" do
    sign_in admin
    render

    assert_select "form[action=?][method=?]", add_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_unit[name=?]", "user[unit]"

    end
  end
end

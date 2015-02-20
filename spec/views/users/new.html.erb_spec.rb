require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :unit => "MyString",
      :is_admin => false,
      :role => 1
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_unit[name=?]", "user[unit]"

      assert_select "input#user_is_admin[name=?]", "user[is_admin]"

      assert_select "input#user_role[name=?]", "user[role]"
    end
  end
end

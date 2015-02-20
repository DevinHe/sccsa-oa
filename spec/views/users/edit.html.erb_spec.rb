require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :unit => "MyString",
      :is_admin => false,
      :email => "sccsa@gmail.com",
      :password => "password",
      :role => 1
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_unit[name=?]", "user[unit]"

      assert_select "input#user_is_admin[name=?]", "user[is_admin]"

      assert_select "input#user_role[name=?]", "user[role]"
    end
  end
end

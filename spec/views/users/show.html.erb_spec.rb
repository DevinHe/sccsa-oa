require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :email => "sccsa@gmail.com",
      :password => "password",
      :unit => "Unit",
      :is_admin => false,
      :role => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end

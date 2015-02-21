require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :email => "sccsa@gmail.com",
      :password => "password",
      :unit => "Unit",
      :is_admin => false,
      :role_id => 1
    ))
    allow(@user).to receive_message_chain(:role,:name).and_return('Test')
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/否/)
    expect(rendered).to match(/1/)
  end
end

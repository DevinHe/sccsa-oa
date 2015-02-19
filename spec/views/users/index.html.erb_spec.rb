require 'rails_helper'

RSpec.describe "users/index", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    assign(:q,User.ransack(q: ''))
    @user1 = User.create!(
        :name => "Name",
        :unit => "Unit",
        :email => "sccsa@gmail.com",
        :password => "password",
        :is_admin => false,
        :role_id => 1
      )
    @user2 = User.create!(
        :name => "Name1",
        :unit => "Unit",
        :email => "sccsa1@gmail.com",
        :password => "password",
        :is_admin => false,
        :role_id => 1
      )
    assign(:users, [@user1,@user2].paginate(per_page: 10,page: 1))
    allow(@user1).to receive_message_chain(:role,:name).and_return('Test')
    allow(@user2).to receive_message_chain(:role,:name).and_return('Test')
  end

  it "renders a list of users" do
    sign_in admin
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
  end
end

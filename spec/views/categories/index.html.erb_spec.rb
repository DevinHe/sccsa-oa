require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    assign(:q,Category.ransack(q: ''))
    assign(:categories, [
      Category.create!(
        :name => "Name"
      ),
      Category.create!(
        :name => "Name"
      )
    ].paginate(per_page: 10,page: 1))
  end

  it "renders a list of categories" do
    sign_in admin

    render
    assert_select "li", :class => "message-time-list", :count => 2
  end
end

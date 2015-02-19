require 'rails_helper'

RSpec.describe "resources/index", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    assign(:q,Resource.ransack(q: ''))
    assign(:resources, [
      Factory(:resource),
      Factory(:resource)
    ].paginate(per_page: 10,page: 1))
  end

  it "renders a list of resources" do
    sign_in admin

    render
    assert_select "li", class: "message-time-list", :count => 2
  end
end

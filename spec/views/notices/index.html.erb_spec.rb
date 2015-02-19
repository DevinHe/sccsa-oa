require 'rails_helper'

RSpec.describe "notices/index", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    assign(:q,Notice.ransack(q: ''))
    assign(:notices, [
      Notice.create!(
        :title => "Title",
        :content => "MyText"
      ),
      Notice.create!(
        :title => "Title",
        :content => "MyText"
      )
    ].paginate(per_page: 10,page: 1))
  end

  it "renders a list of notices" do
    sign_in admin
    render
    assert_select "li", :class => "message-time-list", :count => 2
  end
end

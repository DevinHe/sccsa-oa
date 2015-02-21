require 'rails_helper'

RSpec.describe "notices/index", type: :view do
  before(:each) do
    assign(:notices, [
      Notice.create!(
        :title => "Title",
        :content => "MyText"
      ),
      Notice.create!(
        :title => "Title",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of notices" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

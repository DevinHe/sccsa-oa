require 'rails_helper'

RSpec.describe "applies/index", type: :view do
  before(:each) do
    assign(:applies, [
      Apply.create!(
        :user => nil,
        :project => nil,
        :category => nil,
        :requirement => "MyText",
        :site => "MyText",
        :facilities => "MyText",
        :address => "MyText",
        :is_back => false,
        :is_pass => false,
        :is_distribute => false,
        :attachment => "Attachment"
      ),
      Apply.create!(
        :user => nil,
        :project => nil,
        :category => nil,
        :requirement => "MyText",
        :site => "MyText",
        :facilities => "MyText",
        :address => "MyText",
        :is_back => false,
        :is_pass => false,
        :is_distribute => false,
        :attachment => "Attachment"
      )
    ])
  end

  it "renders a list of applies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Attachment".to_s, :count => 2
  end
end

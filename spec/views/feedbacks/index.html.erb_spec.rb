require 'rails_helper'

RSpec.describe "feedbacks/index", type: :view do
  before(:each) do
    assign(:feedbacks, [
      Feedback.create!(
        :user => nil,
        :apply => nil,
        :content => "MyText",
        :coach => "MyText",
        :suggestion => "MyText",
        :population => "MyText",
        :distribute_advice => "MyText"
      ),
      Feedback.create!(
        :user => nil,
        :apply => nil,
        :content => "MyText",
        :coach => "MyText",
        :suggestion => "MyText",
        :population => "MyText",
        :distribute_advice => "MyText"
      )
    ])
  end

  it "renders a list of feedbacks" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

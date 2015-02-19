require 'rails_helper'

RSpec.describe "verifies/index", type: :view do
  before(:each) do
    assign(:verifies, [
      Verify.create!(
        :is_pass => false,
        :apply => nil,
        :content => "MyText"
      ),
      Verify.create!(
        :is_pass => false,
        :apply => nil,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of verifies" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

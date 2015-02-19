require 'rails_helper'

RSpec.describe "distributes/index", type: :view do
  before(:each) do
    assign(:distributes, [
      Distribute.create!(
        :is_distribute => false,
        :user => nil,
        :apply => nil
      ),
      Distribute.create!(
        :is_distribute => false,
        :user => nil,
        :apply => nil
      )
    ])
  end

  it "renders a list of distributes" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

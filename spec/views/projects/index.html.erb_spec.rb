require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :name => "Name",
        :serial => "Serial",
        :category => nil
      ),
      Project.create!(
        :name => "Name",
        :serial => "Serial",
        :category => nil
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Serial".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

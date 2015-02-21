require 'rails_helper'

RSpec.describe "resources/index", type: :view do
  before(:each) do
    assign(:resources, [
      Resource.create!(
        :title => "Title",
        :attcahment => "Attcahment"
      ),
      Resource.create!(
        :title => "Title",
        :attcahment => "Attcahment"
      )
    ])
  end

  it "renders a list of resources" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Attcahment".to_s, :count => 2
  end
end

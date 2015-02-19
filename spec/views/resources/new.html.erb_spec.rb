require 'rails_helper'

RSpec.describe "resources/new", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    assign(:resource, Resource.new())
  end

  it "renders new resource form" do
    sign_in admin

    render

    assert_select "form[action=?][method=?]", resources_path, "post" do

      assert_select "input#resource_title[name=?]", "resource[title]"

    end
  end
end

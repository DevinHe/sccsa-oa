require 'rails_helper'

RSpec.describe "applies/new", type: :view do
  let(:applier) { Factory :applier }
  before(:each) do
    assign(:apply, Apply.new(
      :user => nil,
      :project => nil,
      :category => nil,
      :requirement => "MyText",
      :site => "MyText",
      :facilities => "MyText",
      :address => "MyText",
    ))
  end

  it "renders new apply form" do
    sign_in applier
    render

    assert_select "form[action=?][method=?]", applies_path, "post" do

      assert_select "input#apply_user_id[name=?]", "apply[user_id]"

      assert_select "textarea#apply_requirement[name=?]", "apply[requirement]"

      assert_select "textarea#apply_site[name=?]", "apply[site]"

      assert_select "textarea#apply_facilities[name=?]", "apply[facilities]"

      assert_select "textarea#apply_address[name=?]", "apply[address]"

    end
  end
end

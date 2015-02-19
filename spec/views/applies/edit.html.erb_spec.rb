require 'rails_helper'

RSpec.describe "applies/edit", type: :view do
  let(:applier) { Factory :applier }
  before(:each) do
    # @apply = assign(:apply, Apply.create!(
    #   :user => nil,
    #   :project => nil,
    #   :category => nil,
    #   :requirement => "MyText",
    #   :site => "MyText",
    #   :facilities => "MyText",
    #   :address => "MyText",
    # ))
    @apply = Factory :apply
  end

  it "renders the edit apply form" do
    sign_in applier

    render

    assert_select "form[action=?][method=?]", apply_path(@apply), "post" do

      assert_select "input#apply_user_id[name=?]", "apply[user_id]"

      assert_select "textarea#apply_requirement[name=?]", "apply[requirement]"

      assert_select "textarea#apply_site[name=?]", "apply[site]"

      assert_select "textarea#apply_facilities[name=?]", "apply[facilities]"

      assert_select "textarea#apply_address[name=?]", "apply[address]"

    end
  end
end

require 'rails_helper'

RSpec.describe "applies/edit", type: :view do
  before(:each) do
    @apply = assign(:apply, Apply.create!(
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
      :attachment => "MyString"
    ))
  end

  it "renders the edit apply form" do
    render

    assert_select "form[action=?][method=?]", apply_path(@apply), "post" do

      assert_select "input#apply_user_id[name=?]", "apply[user_id]"

      assert_select "input#apply_project_id[name=?]", "apply[project_id]"

      assert_select "input#apply_category_id[name=?]", "apply[category_id]"

      assert_select "textarea#apply_requirement[name=?]", "apply[requirement]"

      assert_select "textarea#apply_site[name=?]", "apply[site]"

      assert_select "textarea#apply_facilities[name=?]", "apply[facilities]"

      assert_select "textarea#apply_address[name=?]", "apply[address]"

      assert_select "input#apply_is_back[name=?]", "apply[is_back]"

      assert_select "input#apply_is_pass[name=?]", "apply[is_pass]"

      assert_select "input#apply_is_distribute[name=?]", "apply[is_distribute]"

      assert_select "input#apply_attachment[name=?]", "apply[attachment]"
    end
  end
end

require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    @category = assign(:category, Category.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit category form" do
    sign_in admin

    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_name[name=?]", "category[name]"
    end
  end
end

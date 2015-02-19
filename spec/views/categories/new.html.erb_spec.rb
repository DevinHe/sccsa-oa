require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    assign(:category, Category.new(
      :name => "MyString"
    ))
  end

  it "renders new category form" do
    sign_in admin

    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_name[name=?]", "category[name]"
    end
  end
end

require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  let(:admin) { Factory :admin }

  it "renders the edit project form" do
    sign_in admin
    category = Factory :category
    @project = Factory :project, category_id: category.id
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_serial[name=?]", "project[serial]"

    end
  end
end

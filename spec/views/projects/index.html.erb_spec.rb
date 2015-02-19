require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  let(:admin) { Factory :admin }
  let(:category) { Factory :category }
  let(:project1) { Factory :project }
  let(:project2) { Factory :project }
  before(:each) do
    assign(:q,Project.ransack(q: ''))
    assign(:projects, [project1,project2].paginate(per_page: 10,page: 1))
  end

  it "renders a list of projects" do
    sign_in admin

    render
    assert_select "tr", :count => 3
  end
end

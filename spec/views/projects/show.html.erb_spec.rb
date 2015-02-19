require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  let(:admin) { Factory :admin }
  let(:category) { Factory :category }
  before(:each) do
    @project = assign(:project, Project.create!(
      :name => "Name",
      :serial => "Serial",
      :category_id => category.id
    ))
  end

  it "renders attributes in <p>" do
    sign_in admin
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Serial/)
    expect(rendered).to match(//)
  end
end

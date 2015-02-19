require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    @category = assign(:category, Category.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    sign_in admin
    render
    expect(rendered).to match(/Name/)
  end
end

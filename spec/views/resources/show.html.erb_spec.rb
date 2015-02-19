require 'rails_helper'

RSpec.describe "resources/show", type: :view do
  before(:each) do
    @resource = assign(:resource, Resource.create!(
      :title => "Title",
      :attcahment => "Attcahment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Attcahment/)
  end
end

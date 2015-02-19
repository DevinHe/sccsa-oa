require 'rails_helper'

RSpec.describe "verifies/show", type: :view do
  before(:each) do
    @verify = assign(:verify, Verify.create!(
      :is_pass => false,
      :apply => nil,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end

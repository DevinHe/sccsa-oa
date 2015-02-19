require 'rails_helper'

RSpec.describe "distributes/show", type: :view do
  before(:each) do
    @distribute = assign(:distribute, Distribute.create!(
      :is_distribute => false,
      :user => nil,
      :apply => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

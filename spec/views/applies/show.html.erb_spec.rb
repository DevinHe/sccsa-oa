require 'rails_helper'

RSpec.describe "applies/show", type: :view do
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
      :attachment => "Attachment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Attachment/)
  end
end

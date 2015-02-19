require 'rails_helper'

RSpec.describe "notices/show", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    @notice = assign(:notice, Notice.create!(
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    sign_in admin
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end

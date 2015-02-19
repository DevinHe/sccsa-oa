require 'rails_helper'

RSpec.describe "applies/show", type: :view do
  let(:applier) { Factory :applier }
  before(:each) do
    @apply = Factory :apply
  end

  it "renders attributes in <p>" do
    sign_in applier
    render

    expect(rendered).to match(/意愿实施日期/)
    expect(rendered).to match(/意愿实施时间/)
  end
end

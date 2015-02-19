require 'rails_helper'

RSpec.describe "applies/index", type: :view do
  let(:applier) { Factory :applier }
  let(:apply1) { Factory :apply }
  let(:apply2) { Factory :apply }
  before(:each) do
    assign(:q,Apply.ransack(q: ''))
    assign(:applies, [apply1,apply2].paginate(per_page: 10,page: 1))
  end

  it "renders a list of applies" do
    sign_in applier

    render
    assert_select "tr", :count => 3
  end
end

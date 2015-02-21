require 'rails_helper'

RSpec.describe "feedbacks/show", type: :view do
  before(:each) do
    @feedback = assign(:feedback, Feedback.create!(
      :user => nil,
      :apply => nil,
      :content => "MyText",
      :coach => "MyText",
      :suggestion => "MyText",
      :population => "MyText",
      :distribute_advice => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

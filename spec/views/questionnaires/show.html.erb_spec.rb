require 'rails_helper'

RSpec.describe "questionnaires/show", type: :view do
  before(:each) do
    @questionnaire = assign(:questionnaire, Questionnaire.create!(
      :content => "MyText",
      :coaches => "Coaches",
      :population => "Population",
      :situation => "Situation",
      :other => "MyText",
      :coache_sitution => "Coache Sitution",
      :coache_other => "Coache Other",
      :distribute => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Coaches/)
    expect(rendered).to match(/Population/)
    expect(rendered).to match(/Situation/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Coache Sitution/)
    expect(rendered).to match(/Coache Other/)
    expect(rendered).to match(//)
  end
end

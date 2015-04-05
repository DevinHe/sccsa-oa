require 'rails_helper'

RSpec.describe "questionnaires/index", type: :view do
  before(:each) do
    assign(:questionnaires, [
      Questionnaire.create!(
        :content => "MyText",
        :coaches => "Coaches",
        :population => "Population",
        :situation => "Situation",
        :other => "MyText",
        :coache_sitution => "Coache Sitution",
        :coache_other => "Coache Other",
        :distribute => nil
      ),
      Questionnaire.create!(
        :content => "MyText",
        :coaches => "Coaches",
        :population => "Population",
        :situation => "Situation",
        :other => "MyText",
        :coache_sitution => "Coache Sitution",
        :coache_other => "Coache Other",
        :distribute => nil
      )
    ])
  end

  it "renders a list of questionnaires" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Coaches".to_s, :count => 2
    assert_select "tr>td", :text => "Population".to_s, :count => 2
    assert_select "tr>td", :text => "Situation".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Coache Sitution".to_s, :count => 2
    assert_select "tr>td", :text => "Coache Other".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

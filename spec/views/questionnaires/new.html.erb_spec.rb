require 'rails_helper'

RSpec.describe "questionnaires/new", type: :view do
  before(:each) do
    assign(:questionnaire, Questionnaire.new(
      :content => "MyText",
      :coaches => "MyString",
      :population => "MyString",
      :situation => "MyString",
      :other => "MyText",
      :coache_sitution => "MyString",
      :coache_other => "MyString",
      :distribute => nil
    ))
  end

  it "renders new questionnaire form" do
    render

    assert_select "form[action=?][method=?]", questionnaires_path, "post" do

      assert_select "textarea#questionnaire_content[name=?]", "questionnaire[content]"

      assert_select "input#questionnaire_coaches[name=?]", "questionnaire[coaches]"

      assert_select "input#questionnaire_population[name=?]", "questionnaire[population]"

      assert_select "input#questionnaire_situation[name=?]", "questionnaire[situation]"

      assert_select "textarea#questionnaire_other[name=?]", "questionnaire[other]"

      assert_select "input#questionnaire_coache_sitution[name=?]", "questionnaire[coache_sitution]"

      assert_select "input#questionnaire_coache_other[name=?]", "questionnaire[coache_other]"

      assert_select "input#questionnaire_distribute_id[name=?]", "questionnaire[distribute_id]"
    end
  end
end

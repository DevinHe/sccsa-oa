require 'rails_helper'

RSpec.describe "feedbacks/edit", type: :view do
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

  it "renders the edit feedback form" do
    render

    assert_select "form[action=?][method=?]", feedback_path(@feedback), "post" do

      assert_select "input#feedback_user_id[name=?]", "feedback[user_id]"

      assert_select "input#feedback_apply_id[name=?]", "feedback[apply_id]"

      assert_select "textarea#feedback_content[name=?]", "feedback[content]"

      assert_select "textarea#feedback_coach[name=?]", "feedback[coach]"

      assert_select "textarea#feedback_suggestion[name=?]", "feedback[suggestion]"

      assert_select "textarea#feedback_population[name=?]", "feedback[population]"

      assert_select "textarea#feedback_distribute_advice[name=?]", "feedback[distribute_advice]"
    end
  end
end

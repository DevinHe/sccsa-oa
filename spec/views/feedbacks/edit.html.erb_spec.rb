require 'rails_helper'

RSpec.describe "feedbacks/edit", type: :view do
  let(:applier) { Factory :applier }
  let(:apply) { Factory :apply }

  it "renders the edit feedback form" do
    distribute = Factory :distribute,apply_id: apply.id
    @feedback = Factory :feedback,apply_id: apply.id
    sign_in applier

    render

    assert_select "form[action=?][method=?]", feedback_path(@feedback), "post" do

      assert_select "input#feedback_user_id[name=?]", "feedback[user_id]"

      assert_select "input#feedback_apply_id[name=?]", "feedback[apply_id]"

      assert_select "textarea#feedback_content[name=?]", "feedback[content]"

      assert_select "textarea#feedback_coach[name=?]", "feedback[coach]"

      assert_select "textarea#feedback_suggestion[name=?]", "feedback[suggestion]"

      assert_select "textarea#feedback_population[name=?]", "feedback[population]"
    end
  end
end

require 'rails_helper'

RSpec.describe "verifies/edit", type: :view do
  before(:each) do
    @verify = assign(:verify, Verify.create!(
      :is_pass => false,
      :apply => nil,
      :content => "MyText"
    ))
  end

  it "renders the edit verify form" do
    render

    assert_select "form[action=?][method=?]", verify_path(@verify), "post" do

      assert_select "input#verify_is_pass[name=?]", "verify[is_pass]"

      assert_select "input#verify_apply_id[name=?]", "verify[apply_id]"

      assert_select "textarea#verify_content[name=?]", "verify[content]"
    end
  end
end

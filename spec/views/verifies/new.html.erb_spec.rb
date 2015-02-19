require 'rails_helper'

RSpec.describe "verifies/new", type: :view do
  before(:each) do
    assign(:verify, Verify.new(
      :is_pass => false,
      :apply => nil,
      :content => "MyText"
    ))
  end

  it "renders new verify form" do
    render

    assert_select "form[action=?][method=?]", verifies_path, "post" do

      assert_select "input#verify_is_pass[name=?]", "verify[is_pass]"

      assert_select "input#verify_apply_id[name=?]", "verify[apply_id]"

      assert_select "textarea#verify_content[name=?]", "verify[content]"
    end
  end
end

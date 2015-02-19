require 'rails_helper'

RSpec.describe "verifies/edit", type: :view do
  let(:admin) { Factory :admin }
  let(:apply) { Factory :apply }
  before(:each) do
    @verify = assign(:verify, Factory(:verify))
  end

  it "renders the edit verify form" do
    sign_in admin

    render

    assert_select "form[action=?][method=?]", verify_path(@verify), "post" do

      assert_select "input#verify_apply_id[name=?]", "verify[apply_id]"

      assert_select "textarea#verify_content[name=?]", "verify[content]"
    end
  end
end

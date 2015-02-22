require 'rails_helper'

RSpec.describe "distributes/new", type: :view do
  before(:each) do
    assign(:distribute, Distribute.new(
      :is_distribute => false,
      :user => nil,
      :apply => nil
    ))
  end

  it "renders new distribute form" do
    render

    assert_select "form[action=?][method=?]", distributes_path, "post" do

      assert_select "input#distribute_is_distribute[name=?]", "distribute[is_distribute]"

      assert_select "input#distribute_user_id[name=?]", "distribute[user_id]"

      assert_select "input#distribute_apply_id[name=?]", "distribute[apply_id]"
    end
  end
end

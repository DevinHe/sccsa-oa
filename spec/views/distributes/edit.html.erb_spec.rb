require 'rails_helper'

RSpec.describe "distributes/edit", type: :view do
  before(:each) do
    @distribute = assign(:distribute, Distribute.create!(
      :is_distribute => false,
      :user => nil,
      :apply => nil
    ))
  end

  it "renders the edit distribute form" do
    render

    assert_select "form[action=?][method=?]", distribute_path(@distribute), "post" do

      assert_select "input#distribute_is_distribute[name=?]", "distribute[is_distribute]"

      assert_select "input#distribute_user_id[name=?]", "distribute[user_id]"

      assert_select "input#distribute_apply_id[name=?]", "distribute[apply_id]"
    end
  end
end

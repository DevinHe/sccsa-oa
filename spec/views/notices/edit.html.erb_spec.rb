require 'rails_helper'

RSpec.describe "notices/edit", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    @notice = assign(:notice, Notice.create!(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit notice form" do
    sign_in admin
    render

    assert_select "form[action=?][method=?]", notice_path(@notice), "post" do

      assert_select "input#notice_title[name=?]", "notice[title]"

      assert_select "textarea#notice_content[name=?]", "notice[content]"
    end
  end
end

require 'rails_helper'

RSpec.describe "notices/new", type: :view do
  let(:admin) { Factory :admin }
  before(:each) do
    assign(:notice, Notice.new(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new notice form" do
    sign_in admin
    render

    assert_select "form[action=?][method=?]", notices_path, "post" do

      assert_select "input#notice_title[name=?]", "notice[title]"

      assert_select "textarea#notice_content[name=?]", "notice[content]"
    end
  end
end

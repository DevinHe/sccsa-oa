require 'rails_helper'

RSpec.describe "welcome/home.html.erb", type: :view do
  let(:user) { Factory :user }

  it "should include user.unit and user.name data" do
    assign(:user,user)
    render
    expect(rendered).to match(Regexp.new(user.unit))
    expect(rendered).to match(Regexp.new(user.name))
    expect(rendered).to match(/登录上海社区体育配送系统/)
  end

end

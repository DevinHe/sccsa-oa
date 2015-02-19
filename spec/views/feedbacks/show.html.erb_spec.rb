require 'rails_helper'

RSpec.describe "feedbacks/show", type: :view do
  let(:applier) { Factory :applier }
  let(:apply) { Factory :apply }

  it "renders attributes in <p>" do
    sign_in applier
    distribute = Factory :distribute,apply_id: apply.id
    @feedback = Factory(:feedback,user_id: applier.id,apply_id: apply.id)

    render
    expect(rendered).to match(/服务情况反馈表/)
    expect(rendered).to match(/上海公共体育服务社区配送/)
  end
end

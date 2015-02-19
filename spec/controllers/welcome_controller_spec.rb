require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  let(:user) { Factory :user }

  describe "GET #home" do
    it "returns http success" do
      sign_in user
      get :home
      expect(response).to have_http_status(:success)
      # expect(response.body).to match(/登录上海社区体育配送系统/)
      # expect(response.body).to match(Regexp.new(user.unit))
      # expect(response.body).to match(Regexp.new(user.name))
    end

    it "should not allow anonymous access" do
      get :home
      expect(response).not_to be_success
    end
  end

end

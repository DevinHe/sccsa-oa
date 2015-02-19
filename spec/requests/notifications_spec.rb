require 'rails_helper'

RSpec.describe "Notifications", type: :request do
  describe "GET /notifications" do
    let(:applier) { Factory :applier }
    it "works! (now write some real specs)" do
      post user_session_path,user: {email: applier.email,password: applier.password}
      get notifications_path
      expect(response).to have_http_status(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "Resources", type: :request do
  let(:applier) { Factory :applier }
  describe "GET /resources" do
    it "works! (now write some real specs)" do
      post user_session_path,user: {email: applier.email,password: applier.password}
      get resources_path
      expect(response).to have_http_status(200)
    end
  end
end

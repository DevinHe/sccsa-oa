require 'rails_helper'

RSpec.describe "Distributes", type: :request do
  let(:applier) { Factory :applier }
  describe "GET /distributes" do
    it "works! (now write some real specs)" do
      post user_session_path,user: {email: applier.email,password: applier.password}
      get distributes_path
      expect(response).to have_http_status(404)
    end
  end
end

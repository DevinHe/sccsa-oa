require 'rails_helper'

RSpec.describe "Feedbacks", type: :request do
  let(:applier) { Factory :applier }
  describe "GET /feedbacks" do
    it "works! (now write some real specs)" do
      post user_session_path,user: {email: applier.email,password: applier.password}
      get feedbacks_path
      expect(response).to have_http_status(404)
    end
  end
end

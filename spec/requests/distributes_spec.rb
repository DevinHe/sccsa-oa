require 'rails_helper'

RSpec.describe "Distributes", type: :request do
  describe "GET /distributes" do
    it "works! (now write some real specs)" do
      get distributes_path
      expect(response).to have_http_status(200)
    end
  end
end

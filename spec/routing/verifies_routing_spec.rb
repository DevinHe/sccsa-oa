require "rails_helper"

RSpec.describe VerifiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/verifies").to route_to("verifies#index")
    end

    it "routes to #new" do
      expect(:get => "/verifies/new").to route_to("verifies#new")
    end

    it "routes to #show" do
      expect(:get => "/verifies/1").to route_to("verifies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/verifies/1/edit").to route_to("verifies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/verifies").to route_to("verifies#create")
    end

    it "routes to #update" do
      expect(:put => "/verifies/1").to route_to("verifies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/verifies/1").to route_to("verifies#destroy", :id => "1")
    end

  end
end

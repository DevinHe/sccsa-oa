require "rails_helper"

RSpec.describe DistributesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/distributes").to route_to("distributes#index")
    end

    it "routes to #new" do
      expect(:get => "/distributes/new").to route_to("distributes#new")
    end

    it "routes to #show" do
      expect(:get => "/distributes/1").to route_to("distributes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/distributes/1/edit").to route_to("distributes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/distributes").to route_to("distributes#create")
    end

    it "routes to #update" do
      expect(:put => "/distributes/1").to route_to("distributes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/distributes/1").to route_to("distributes#destroy", :id => "1")
    end

  end
end

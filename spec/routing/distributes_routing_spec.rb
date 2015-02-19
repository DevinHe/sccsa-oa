require "rails_helper"

RSpec.describe DistributesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/distributes").to route_to("welcome#error_404",path: "distributes")
    end

    it "routes to #new" do
      expect(:get => "/distributes/new").to route_to("welcome#error_404",path: "distributes/new")
    end

    it "routes to #show" do
      expect(:get => "/distributes/1").to route_to("welcome#error_404",path: "distributes/1")
    end

    it "routes to #edit" do
      expect(:get => "/distributes/1/edit").to route_to("welcome#error_404",path: "distributes/1/edit")
    end

    it "routes to #create" do
      expect(:post => "/distributes").to route_to("distributes#create")
    end

    it "routes to #update" do
      expect(:put => "/distributes/1").to route_to("welcome#error_404",path: "distributes/1")
    end

    it "routes to #destroy" do
      expect(:delete => "/distributes/1").to route_to("welcome#error_404",path: "distributes/1")
    end

  end
end

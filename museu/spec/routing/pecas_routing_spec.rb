require "rails_helper"

RSpec.describe PecasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pecas").to route_to("pecas#index")
    end

    it "routes to #new" do
      expect(:get => "/pecas/new").to route_to("pecas#new")
    end

    it "routes to #show" do
      expect(:get => "/pecas/1").to route_to("pecas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pecas/1/edit").to route_to("pecas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pecas").to route_to("pecas#create")
    end

    it "routes to #update" do
      expect(:put => "/pecas/1").to route_to("pecas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pecas/1").to route_to("pecas#destroy", :id => "1")
    end

  end
end

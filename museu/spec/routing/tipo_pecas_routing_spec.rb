require "rails_helper"

RSpec.describe TipoPecasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tipo_pecas").to route_to("tipo_pecas#index")
    end

    it "routes to #new" do
      expect(:get => "/tipo_pecas/new").to route_to("tipo_pecas#new")
    end

    it "routes to #show" do
      expect(:get => "/tipo_pecas/1").to route_to("tipo_pecas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tipo_pecas/1/edit").to route_to("tipo_pecas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tipo_pecas").to route_to("tipo_pecas#create")
    end

    it "routes to #update" do
      expect(:put => "/tipo_pecas/1").to route_to("tipo_pecas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tipo_pecas/1").to route_to("tipo_pecas#destroy", :id => "1")
    end

  end
end

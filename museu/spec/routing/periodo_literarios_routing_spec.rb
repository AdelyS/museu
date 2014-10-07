require "rails_helper"

RSpec.describe PeriodoLiterariosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/periodo_literarios").to route_to("periodo_literarios#index")
    end

    it "routes to #new" do
      expect(:get => "/periodo_literarios/new").to route_to("periodo_literarios#new")
    end

    it "routes to #show" do
      expect(:get => "/periodo_literarios/1").to route_to("periodo_literarios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/periodo_literarios/1/edit").to route_to("periodo_literarios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/periodo_literarios").to route_to("periodo_literarios#create")
    end

    it "routes to #update" do
      expect(:put => "/periodo_literarios/1").to route_to("periodo_literarios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/periodo_literarios/1").to route_to("periodo_literarios#destroy", :id => "1")
    end

  end
end

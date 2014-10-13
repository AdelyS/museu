require "rails_helper"

RSpec.describe PeriodoExposicoesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/periodo_exposicoes").to route_to("periodo_exposicoes#index")
    end

    it "routes to #new" do
      expect(:get => "/periodo_exposicoes/new").to route_to("periodo_exposicoes#new")
    end

    it "routes to #show" do
      expect(:get => "/periodo_exposicoes/1").to route_to("periodo_exposicoes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/periodo_exposicoes/1/edit").to route_to("periodo_exposicoes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/periodo_exposicoes").to route_to("periodo_exposicoes#create")
    end

    it "routes to #update" do
      expect(:put => "/periodo_exposicoes/1").to route_to("periodo_exposicoes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/periodo_exposicoes/1").to route_to("periodo_exposicoes#destroy", :id => "1")
    end

  end
end

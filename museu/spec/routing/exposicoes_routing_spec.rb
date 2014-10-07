require "rails_helper"

RSpec.describe ExposicoesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/exposicoes").to route_to("exposicoes#index")
    end

    it "routes to #new" do
      expect(:get => "/exposicoes/new").to route_to("exposicoes#new")
    end

    it "routes to #show" do
      expect(:get => "/exposicoes/1").to route_to("exposicoes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/exposicoes/1/edit").to route_to("exposicoes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/exposicoes").to route_to("exposicoes#create")
    end

    it "routes to #update" do
      expect(:put => "/exposicoes/1").to route_to("exposicoes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exposicoes/1").to route_to("exposicoes#destroy", :id => "1")
    end

  end
end

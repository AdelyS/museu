require "rails_helper"

RSpec.describe EntradasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/entradas").to route_to("entradas#index")
    end

    it "routes to #new" do
      expect(:get => "/entradas/new").to route_to("entradas#new")
    end

    it "routes to #show" do
      expect(:get => "/entradas/1").to route_to("entradas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/entradas/1/edit").to route_to("entradas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/entradas").to route_to("entradas#create")
    end

    it "routes to #update" do
      expect(:put => "/entradas/1").to route_to("entradas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/entradas/1").to route_to("entradas#destroy", :id => "1")
    end

  end
end

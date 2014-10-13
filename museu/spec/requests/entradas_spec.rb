require 'rails_helper'

RSpec.describe "Entradas", :type => :request do
  describe "GET /entradas" do
    it "works! (now write some real specs)" do
      get entradas_path
      expect(response.status).to be(200)
    end
  end
end

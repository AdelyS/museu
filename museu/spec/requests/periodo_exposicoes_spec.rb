require 'rails_helper'

RSpec.describe "PeriodoExposicoes", :type => :request do
  describe "GET /periodo_exposicoes" do
    it "works! (now write some real specs)" do
      get periodo_exposicoes_path
      expect(response.status).to be(200)
    end
  end
end

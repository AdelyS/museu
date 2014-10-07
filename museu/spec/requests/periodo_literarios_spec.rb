require 'rails_helper'

RSpec.describe "PeriodoLiterarios", :type => :request do
  describe "GET /periodo_literarios" do
    it "works! (now write some real specs)" do
      get periodo_literarios_path
      expect(response.status).to be(200)
    end
  end
end

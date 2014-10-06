require 'rails_helper'

RSpec.describe "TipoPecas", :type => :request do
  describe "GET /tipo_pecas" do
    it "works! (now write some real specs)" do
      get tipo_pecas_path
      expect(response.status).to be(200)
    end
  end
end

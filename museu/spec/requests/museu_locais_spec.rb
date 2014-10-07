require 'rails_helper'

RSpec.describe "MuseuLocais", :type => :request do
  describe "GET /museu_locais" do
    it "works! (now write some real specs)" do
      get museu_locais_path
      expect(response.status).to be(200)
    end
  end
end

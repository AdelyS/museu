require 'rails_helper'

RSpec.describe "Exposicoes", :type => :request do
  describe "GET /exposicoes" do
    it "works! (now write some real specs)" do
      get exposicoes_path
      expect(response.status).to be(200)
    end
  end
end

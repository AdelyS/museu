require 'rails_helper'

RSpec.describe "Pecas", :type => :request do
  describe "GET /pecas" do
    it "works! (now write some real specs)" do
      get pecas_path
      expect(response.status).to be(200)
    end
  end
end

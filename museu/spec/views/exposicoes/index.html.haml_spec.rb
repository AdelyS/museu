require 'rails_helper'

RSpec.describe "exposicoes/index", :type => :view do
  before(:each) do
    assign(:exposicoes, [
      Exposicao.create!(
        :nome => "Nome",
        :paisOrigem => "Paisorigem"
      ),
      Exposicao.create!(
        :nome => "Nome",
        :paisOrigem => "Paisorigem"
      )
    ])
  end

  it "renders a list of exposicoes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Paisorigem".to_s, :count => 2
  end
end

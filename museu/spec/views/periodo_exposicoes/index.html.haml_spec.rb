require 'rails_helper'

RSpec.describe "periodo_exposicoes/index", :type => :view do
  before(:each) do
    assign(:periodo_exposicoes, [
      PeriodoExposicao.create!(
        :museuLocal => nil,
        :exposicao => nil
      ),
      PeriodoExposicao.create!(
        :museuLocal => nil,
        :exposicao => nil
      )
    ])
  end

  it "renders a list of periodo_exposicoes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

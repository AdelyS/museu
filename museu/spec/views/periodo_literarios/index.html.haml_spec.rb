require 'rails_helper'

RSpec.describe "periodo_literarios/index", :type => :view do
  before(:each) do
    assign(:periodo_literarios, [
      PeriodoLiterario.create!(
        :nome => "Nome",
        :anoInicio => 1,
        :anoFim => 2,
        :descricao => "Descricao"
      ),
      PeriodoLiterario.create!(
        :nome => "Nome",
        :anoInicio => 1,
        :anoFim => 2,
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of periodo_literarios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end

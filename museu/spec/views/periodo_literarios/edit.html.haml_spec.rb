require 'rails_helper'

RSpec.describe "periodo_literarios/edit", :type => :view do
  before(:each) do
    @periodo_literario = assign(:periodo_literario, PeriodoLiterario.create!(
      :nome => "MyString",
      :anoInicio => 1,
      :anoFim => 1,
      :descricao => "MyString"
    ))
  end

  it "renders the edit periodo_literario form" do
    render

    assert_select "form[action=?][method=?]", periodo_literario_path(@periodo_literario), "post" do

      assert_select "input#periodo_literario_nome[name=?]", "periodo_literario[nome]"

      assert_select "input#periodo_literario_anoInicio[name=?]", "periodo_literario[anoInicio]"

      assert_select "input#periodo_literario_anoFim[name=?]", "periodo_literario[anoFim]"

      assert_select "input#periodo_literario_descricao[name=?]", "periodo_literario[descricao]"
    end
  end
end

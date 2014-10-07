require 'rails_helper'

RSpec.describe "periodo_literarios/new", :type => :view do
  before(:each) do
    assign(:periodo_literario, PeriodoLiterario.new(
      :nome => "MyString",
      :anoInicio => 1,
      :anoFim => 1,
      :descricao => "MyString"
    ))
  end

  it "renders new periodo_literario form" do
    render

    assert_select "form[action=?][method=?]", periodo_literarios_path, "post" do

      assert_select "input#periodo_literario_nome[name=?]", "periodo_literario[nome]"

      assert_select "input#periodo_literario_anoInicio[name=?]", "periodo_literario[anoInicio]"

      assert_select "input#periodo_literario_anoFim[name=?]", "periodo_literario[anoFim]"

      assert_select "input#periodo_literario_descricao[name=?]", "periodo_literario[descricao]"
    end
  end
end

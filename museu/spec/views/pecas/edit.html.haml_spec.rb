require 'rails_helper'

RSpec.describe "pecas/edit", :type => :view do
  before(:each) do
    @peca = assign(:peca, Peca.create!(
      :nome => "MyString",
      :ano => 1,
      :descricao => "MyString",
      :exposicao => nil,
      :autor => nil,
      :tipoPeca => nil,
      :periodoLiterario => nil
    ))
  end

  it "renders the edit peca form" do
    render

    assert_select "form[action=?][method=?]", peca_path(@peca), "post" do

      assert_select "input#peca_nome[name=?]", "peca[nome]"

      assert_select "input#peca_ano[name=?]", "peca[ano]"

      assert_select "input#peca_descricao[name=?]", "peca[descricao]"

      assert_select "input#peca_exposicao_id[name=?]", "peca[exposicao_id]"

      assert_select "input#peca_autor_id[name=?]", "peca[autor_id]"

      assert_select "input#peca_tipoPeca_id[name=?]", "peca[tipoPeca_id]"

      assert_select "input#peca_periodoLiterario_id[name=?]", "peca[periodoLiterario_id]"
    end
  end
end

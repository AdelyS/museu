require 'rails_helper'

RSpec.describe "tipo_pecas/edit", :type => :view do
  before(:each) do
    @tipo_peca = assign(:tipo_peca, TipoPeca.create!(
      :descricao => "MyString"
    ))
  end

  it "renders the edit tipo_peca form" do
    render

    assert_select "form[action=?][method=?]", tipo_peca_path(@tipo_peca), "post" do

      assert_select "input#tipo_peca_descricao[name=?]", "tipo_peca[descricao]"
    end
  end
end

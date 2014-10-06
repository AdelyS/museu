require 'rails_helper'

RSpec.describe "tipo_pecas/new", :type => :view do
  before(:each) do
    assign(:tipo_peca, TipoPeca.new(
      :descricao => "MyString"
    ))
  end

  it "renders new tipo_peca form" do
    render

    assert_select "form[action=?][method=?]", tipo_pecas_path, "post" do

      assert_select "input#tipo_peca_descricao[name=?]", "tipo_peca[descricao]"
    end
  end
end

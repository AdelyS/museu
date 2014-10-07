require 'rails_helper'

RSpec.describe "museu_locais/new", :type => :view do
  before(:each) do
    assign(:museu_local, MuseuLocal.new(
      :nome => "MyString",
      :endereco => "MyString",
      :horario => "MyString"
    ))
  end

  it "renders new museu_local form" do
    render

    assert_select "form[action=?][method=?]", museu_locais_path, "post" do

      assert_select "input#museu_local_nome[name=?]", "museu_local[nome]"

      assert_select "input#museu_local_endereco[name=?]", "museu_local[endereco]"

      assert_select "input#museu_local_horario[name=?]", "museu_local[horario]"
    end
  end
end

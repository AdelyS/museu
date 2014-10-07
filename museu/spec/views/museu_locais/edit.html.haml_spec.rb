require 'rails_helper'

RSpec.describe "museu_locais/edit", :type => :view do
  before(:each) do
    @museu_local = assign(:museu_local, MuseuLocal.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :horario => "MyString"
    ))
  end

  it "renders the edit museu_local form" do
    render

    assert_select "form[action=?][method=?]", museu_local_path(@museu_local), "post" do

      assert_select "input#museu_local_nome[name=?]", "museu_local[nome]"

      assert_select "input#museu_local_endereco[name=?]", "museu_local[endereco]"

      assert_select "input#museu_local_horario[name=?]", "museu_local[horario]"
    end
  end
end

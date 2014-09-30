require 'rails_helper'

RSpec.describe "autores/new", :type => :view do
  before(:each) do
    assign(:autor, Autor.new(
      :nome => "MyString",
      :nacionalidade => "MyString",
      :resumoBiografia => "MyString"
    ))
  end

  it "renders new autor form" do
    render

    assert_select "form[action=?][method=?]", autores_path, "post" do

      assert_select "input#autor_nome[name=?]", "autor[nome]"

      assert_select "input#autor_nacionalidade[name=?]", "autor[nacionalidade]"

      assert_select "input#autor_resumoBiografia[name=?]", "autor[resumoBiografia]"
    end
  end
end

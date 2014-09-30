require 'rails_helper'

RSpec.describe "autores/edit", :type => :view do
  before(:each) do
    @autor = assign(:autor, Autor.create!(
      :nome => "MyString",
      :nacionalidade => "MyString",
      :resumoBiografia => "MyString"
    ))
  end

  it "renders the edit autor form" do
    render

    assert_select "form[action=?][method=?]", autor_path(@autor), "post" do

      assert_select "input#autor_nome[name=?]", "autor[nome]"

      assert_select "input#autor_nacionalidade[name=?]", "autor[nacionalidade]"

      assert_select "input#autor_resumoBiografia[name=?]", "autor[resumoBiografia]"
    end
  end
end

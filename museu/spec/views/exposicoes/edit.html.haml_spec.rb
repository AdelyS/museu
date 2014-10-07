require 'rails_helper'

RSpec.describe "exposicoes/edit", :type => :view do
  before(:each) do
    @exposicao = assign(:exposicao, Exposicao.create!(
      :nome => "MyString",
      :paisOrigem => "MyString"
    ))
  end

  it "renders the edit exposicao form" do
    render

    assert_select "form[action=?][method=?]", exposicao_path(@exposicao), "post" do

      assert_select "input#exposicao_nome[name=?]", "exposicao[nome]"

      assert_select "input#exposicao_paisOrigem[name=?]", "exposicao[paisOrigem]"
    end
  end
end

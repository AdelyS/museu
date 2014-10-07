require 'rails_helper'

RSpec.describe "exposicoes/new", :type => :view do
  before(:each) do
    assign(:exposicao, Exposicao.new(
      :nome => "MyString",
      :paisOrigem => "MyString"
    ))
  end

  it "renders new exposicao form" do
    render

    assert_select "form[action=?][method=?]", exposicoes_path, "post" do

      assert_select "input#exposicao_nome[name=?]", "exposicao[nome]"

      assert_select "input#exposicao_paisOrigem[name=?]", "exposicao[paisOrigem]"
    end
  end
end

require 'rails_helper'

RSpec.describe "periodo_exposicoes/new", :type => :view do
  before(:each) do
    assign(:periodo_exposicao, PeriodoExposicao.new(
      :museuLocal => nil,
      :exposicao => nil
    ))
  end

  it "renders new periodo_exposicao form" do
    render

    assert_select "form[action=?][method=?]", periodo_exposicoes_path, "post" do

      assert_select "input#periodo_exposicao_museuLocal_id[name=?]", "periodo_exposicao[museuLocal_id]"

      assert_select "input#periodo_exposicao_exposicao_id[name=?]", "periodo_exposicao[exposicao_id]"
    end
  end
end

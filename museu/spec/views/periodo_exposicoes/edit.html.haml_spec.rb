require 'rails_helper'

RSpec.describe "periodo_exposicoes/edit", :type => :view do
  before(:each) do
    @periodo_exposicao = assign(:periodo_exposicao, PeriodoExposicao.create!(
      :museuLocal => nil,
      :exposicao => nil
    ))
  end

  it "renders the edit periodo_exposicao form" do
    render

    assert_select "form[action=?][method=?]", periodo_exposicao_path(@periodo_exposicao), "post" do

      assert_select "input#periodo_exposicao_museuLocal_id[name=?]", "periodo_exposicao[museuLocal_id]"

      assert_select "input#periodo_exposicao_exposicao_id[name=?]", "periodo_exposicao[exposicao_id]"
    end
  end
end

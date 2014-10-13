require 'rails_helper'

RSpec.describe "periodo_exposicoes/show", :type => :view do
  before(:each) do
    @periodo_exposicao = assign(:periodo_exposicao, PeriodoExposicao.create!(
      :museuLocal => nil,
      :exposicao => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

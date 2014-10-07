require 'rails_helper'

RSpec.describe "periodo_literarios/show", :type => :view do
  before(:each) do
    @periodo_literario = assign(:periodo_literario, PeriodoLiterario.create!(
      :nome => "Nome",
      :anoInicio => 1,
      :anoFim => 2,
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Descricao/)
  end
end

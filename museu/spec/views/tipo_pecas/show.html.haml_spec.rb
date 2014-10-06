require 'rails_helper'

RSpec.describe "tipo_pecas/show", :type => :view do
  before(:each) do
    @tipo_peca = assign(:tipo_peca, TipoPeca.create!(
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
  end
end

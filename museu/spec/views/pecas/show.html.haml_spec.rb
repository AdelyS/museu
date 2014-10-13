require 'rails_helper'

RSpec.describe "pecas/show", :type => :view do
  before(:each) do
    @peca = assign(:peca, Peca.create!(
      :nome => "Nome",
      :ano => 1,
      :descricao => "Descricao",
      :exposicao => nil,
      :autor => nil,
      :tipoPeca => nil,
      :periodoLiterario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

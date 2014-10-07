require 'rails_helper'

RSpec.describe "museu_locais/show", :type => :view do
  before(:each) do
    @museu_local = assign(:museu_local, MuseuLocal.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :horario => "Horario"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Horario/)
  end
end

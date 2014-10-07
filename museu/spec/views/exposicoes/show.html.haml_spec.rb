require 'rails_helper'

RSpec.describe "exposicoes/show", :type => :view do
  before(:each) do
    @exposicao = assign(:exposicao, Exposicao.create!(
      :nome => "Nome",
      :paisOrigem => "Paisorigem"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Paisorigem/)
  end
end

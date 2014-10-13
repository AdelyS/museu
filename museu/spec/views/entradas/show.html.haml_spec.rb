require 'rails_helper'

RSpec.describe "entradas/show", :type => :view do
  before(:each) do
    @entrada = assign(:entrada, Entrada.create!(
      :preco => 1.5,
      :ingresso => nil,
      :museuLocal => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

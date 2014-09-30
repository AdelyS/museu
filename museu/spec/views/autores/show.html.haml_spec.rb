require 'rails_helper'

RSpec.describe "autores/show", :type => :view do
  before(:each) do
    @autor = assign(:autor, Autor.create!(
      :nome => "Nome",
      :nacionalidade => "Nacionalidade",
      :resumoBiografia => "Resumobiografia"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Nacionalidade/)
    expect(rendered).to match(/Resumobiografia/)
  end
end

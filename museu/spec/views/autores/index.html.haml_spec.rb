require 'rails_helper'

RSpec.describe "autores/index", :type => :view do
  before(:each) do
    assign(:autores, [
      Autor.create!(
        :nome => "Nome",
        :nacionalidade => "Nacionalidade",
        :resumoBiografia => "Resumobiografia"
      ),
      Autor.create!(
        :nome => "Nome",
        :nacionalidade => "Nacionalidade",
        :resumoBiografia => "Resumobiografia"
      )
    ])
  end

  it "renders a list of autores" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Nacionalidade".to_s, :count => 2
    assert_select "tr>td", :text => "Resumobiografia".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "museu_locais/index", :type => :view do
  before(:each) do
    assign(:museu_locais, [
      MuseuLocal.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :horario => "Horario"
      ),
      MuseuLocal.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :horario => "Horario"
      )
    ])
  end

  it "renders a list of museu_locais" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Horario".to_s, :count => 2
  end
end

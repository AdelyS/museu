require 'rails_helper'

RSpec.describe "pecas/index", :type => :view do
  before(:each) do
    assign(:pecas, [
      Peca.create!(
        :nome => "Nome",
        :ano => 1,
        :descricao => "Descricao",
        :exposicao => nil,
        :autor => nil,
        :tipoPeca => nil,
        :periodoLiterario => nil
      ),
      Peca.create!(
        :nome => "Nome",
        :ano => 1,
        :descricao => "Descricao",
        :exposicao => nil,
        :autor => nil,
        :tipoPeca => nil,
        :periodoLiterario => nil
      )
    ])
  end

  it "renders a list of pecas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "tipo_pecas/index", :type => :view do
  before(:each) do
    assign(:tipo_pecas, [
      TipoPeca.create!(
        :descricao => "Descricao"
      ),
      TipoPeca.create!(
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of tipo_pecas" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end

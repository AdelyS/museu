require 'rails_helper'

RSpec.describe "entradas/index", :type => :view do
  before(:each) do
    assign(:entradas, [
      Entrada.create!(
        :preco => 1.5,
        :ingresso => nil,
        :museuLocal => nil
      ),
      Entrada.create!(
        :preco => 1.5,
        :ingresso => nil,
        :museuLocal => nil
      )
    ])
  end

  it "renders a list of entradas" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

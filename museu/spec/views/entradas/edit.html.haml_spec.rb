require 'rails_helper'

RSpec.describe "entradas/edit", :type => :view do
  before(:each) do
    @entrada = assign(:entrada, Entrada.create!(
      :preco => 1.5,
      :ingresso => nil,
      :museuLocal => nil
    ))
  end

  it "renders the edit entrada form" do
    render

    assert_select "form[action=?][method=?]", entrada_path(@entrada), "post" do

      assert_select "input#entrada_preco[name=?]", "entrada[preco]"

      assert_select "input#entrada_ingresso_id[name=?]", "entrada[ingresso_id]"

      assert_select "input#entrada_museuLocal_id[name=?]", "entrada[museuLocal_id]"
    end
  end
end

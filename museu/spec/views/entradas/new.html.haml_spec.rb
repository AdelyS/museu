require 'rails_helper'

RSpec.describe "entradas/new", :type => :view do
  before(:each) do
    assign(:entrada, Entrada.new(
      :preco => 1.5,
      :ingresso => nil,
      :museuLocal => nil
    ))
  end

  it "renders new entrada form" do
    render

    assert_select "form[action=?][method=?]", entradas_path, "post" do

      assert_select "input#entrada_preco[name=?]", "entrada[preco]"

      assert_select "input#entrada_ingresso_id[name=?]", "entrada[ingresso_id]"

      assert_select "input#entrada_museuLocal_id[name=?]", "entrada[museuLocal_id]"
    end
  end
end

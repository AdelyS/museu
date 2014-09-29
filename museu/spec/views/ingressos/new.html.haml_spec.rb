require 'rails_helper'

RSpec.describe "ingressos/new", :type => :view do
  before(:each) do
    assign(:ingresso, Ingresso.new(
      :tipo => "MyString"
    ))
  end

  it "renders new ingresso form" do
    render

    assert_select "form[action=?][method=?]", ingressos_path, "post" do

      assert_select "input#ingresso_tipo[name=?]", "ingresso[tipo]"
    end
  end
end

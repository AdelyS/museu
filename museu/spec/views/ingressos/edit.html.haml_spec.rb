require 'rails_helper'

RSpec.describe "ingressos/edit", :type => :view do
  before(:each) do
    @ingresso = assign(:ingresso, Ingresso.create!(
      :tipo => "MyString"
    ))
  end

  it "renders the edit ingresso form" do
    render

    assert_select "form[action=?][method=?]", ingresso_path(@ingresso), "post" do

      assert_select "input#ingresso_tipo[name=?]", "ingresso[tipo]"
    end
  end
end

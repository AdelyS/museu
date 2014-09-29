require 'rails_helper'

RSpec.describe "ingressos/index", :type => :view do
  before(:each) do
    assign(:ingressos, [
      Ingresso.create!(
        :tipo => "Tipo"
      ),
      Ingresso.create!(
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of ingressos" do
    render
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end

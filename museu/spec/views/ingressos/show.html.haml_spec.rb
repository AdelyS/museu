require 'rails_helper'

RSpec.describe "ingressos/show", :type => :view do
  before(:each) do
    @ingresso = assign(:ingresso, Ingresso.create!(
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tipo/)
  end
end

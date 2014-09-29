# coding: utf-8
require 'rails_helper'
feature 'gerenciar Ingresso' do
scenario 'incluir Ingresso' do # , :js => true do
visit new_ingresso_path
preencher_e_verificar_ingresso
end
scenario 'alterar Ingresso' do #, :js => true do
ingresso = FactoryGirl.create(:ingresso)
visit edit_ingresso_path(ingresso)
preencher_e_verificar_ingresso
end
scenario 'excluir ingresso' do #, :javascript => true do
ingresso = FactoryGirl.create(:ingresso)
visit ingressos_path
click_link 'Excluir'
end
def preencher_e_verificar_ingresso
fill_in 'Tipo', :with => "meia"
click_button 'Salvar'
expect(page).to have_content 'Tipo: meia'
end
end

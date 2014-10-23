# coding: utf-8
require 'rails_helper'
feature 'gerenciar PeriodoLiterario' do
scenario 'incluir PeriodoLiterario' do # , :js => true do
visit new_periodo_literario_path
preencher_e_verificar_periodoLiterario
end
scenario 'alterar PeriodoLiterario' do #, :js => true do
periodoLiterario = FactoryGirl.create(:periodo_literario)
visit edit_periodo_literario_path(periodoLiterario)
preencher_e_verificar_periodoLiterario
end
scenario 'excluir periodoLiterario' do #, :javascript => true do
periodoLiterario = FactoryGirl.create(:periodo_literario)
visit periodo_literarios_path
click_link 'Excluir'
end
def preencher_e_verificar_periodoLiterario
fill_in 'Nome', :with => 'nome'
fill_in 'Ano inicio', :with => '123'
fill_in 'Ano fim', :with => '456'
fill_in 'Descrição', :with => 'quadro'
click_button 'Salvar'
expect(page).to have_content 'Nome: nome'
expect(page).to have_content 'Ano inicio: 123'
expect(page).to have_content 'Ano fim: 456'
expect(page).to have_content 'Descrição: quadro'
end
end

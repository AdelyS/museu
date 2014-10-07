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
fill_in 'Anoinicio', :with => '123'
fill_in 'Anofim', :with => '456'
fill_in 'Descricao', :with => 'quadro'
click_button 'Salvar'
expect(page).to have_content 'Nome: nome'
expect(page).to have_content 'Anoinicio: 123'
expect(page).to have_content 'Anofim: 456'
expect(page).to have_content 'Descricao: quadro'
end
end

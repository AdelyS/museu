# coding: utf-8
require 'rails_helper'
feature 'gerenciar Exposicao' do
	scenario 'incluir Exposicao' do # , :js => true do
		visit new_exposicao_path
		preencher_e_verificar_exposicao
	end
	scenario 'alterar Exposicao' do #, :js => true do
		exposicao = FactoryGirl.create(:exposicao)
		visit edit_exposicao_path(exposicao)
		preencher_e_verificar_exposicao
	end
	scenario 'excluir exposicao' do #, :javascript => true do
		exposicao = FactoryGirl.create(:exposicao)
		visit exposicoes_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_exposicao
		fill_in 'Nome', :with => "nome"
		fill_in 'País Origem', :with => "pais"
		
		click_button 'Salvar'
		expect(page).to have_content 'Nome: nome'
		expect(page).to have_content 'País Origem: pais'
	end
end

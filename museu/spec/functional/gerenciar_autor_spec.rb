# coding: utf-8
require 'rails_helper'
feature 'gerenciar Autor' do
	scenario 'incluir Autor' do # , :js => true do
		visit new_autor_path
		preencher_e_verificar_autor
	end
	scenario 'alterar Autor' do #, :js => true do
		autor = FactoryGirl.create(:autor)
		visit edit_autor_path(autor)
		preencher_e_verificar_autor
	end
	scenario 'excluir autor' do #, :javascript => true do
		autor = FactoryGirl.create(:autor)
		visit autores_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_autor
		fill_in 'Nome', :with => "nome"
		fill_in 'Nacionalidade', :with => "nacionalidade"
		fill_in 'Resumo da Biografia', :with => "resumoBiografia"
		click_button 'Salvar'
		expect(page).to have_content 'Nome: nome'
		expect(page).to have_content 'Nacionalidade: nacionalidade'
		expect(page).to have_content 'Resumo da Biografia: resumoBiografia'
	end
end

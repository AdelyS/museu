# coding: utf-8
require 'rails_helper'
feature 'gerenciar MuseuLocal' do
	scenario 'incluir MuseuLocal' do # , :js => true do
		visit new_museu_local_path
		preencher_e_verificar_museuLocal
	end
	scenario 'alterar MuseuLocal' do #, :js => true do
		museuLocal = FactoryGirl.create(:museu_local)
		visit edit_museu_local_path(museuLocal)
		preencher_e_verificar_museuLocal
	end
	scenario 'excluir museuLocal' do #, :javascript => true do
		museuLocal = FactoryGirl.create(:museu_local)
		visit museu_locais_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_museuLocal
		fill_in 'Nome', :with => "nome"
		fill_in 'Endereço', :with => "endereco"
		fill_in 'Horário', :with => "horario"
		click_button 'Salvar'
		expect(page).to have_content 'Nome: nome'
		expect(page).to have_content 'Endereço: endereco'
		expect(page).to have_content 'Horário: horario'
	end
end


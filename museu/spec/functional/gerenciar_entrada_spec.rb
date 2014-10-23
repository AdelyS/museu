# coding: utf-8
require 'rails_helper'
feature 'gerenciar Entrada' do
	before :each do
		create(:ingresso, tipo: 'meia')
		create(:museu_local, nome: 'MAM',endereco: 'Rio', horario:'20h')
	end
	let(:ingresso) {create(:ingresso, tipo: 'inteira')}
	let(:museuLocal){create(:museu_local, nome: 'MAR',endereco: 'Rio', horario:'20h')}
	scenario 'incluir Entrada' do # , :js => true do
		visit new_entrada_path
		preencher_e_verificar_entrada
	end
	scenario 'alterar Entrada' do #, :js => true do
		entrada = FactoryGirl.create(:entrada,:ingresso => ingresso ,:museuLocal => museuLocal)
		visit edit_entrada_path(entrada)
		preencher_e_verificar_entrada
	end
	scenario 'excluir entrada' do #, :javascript => true do
		entrada = FactoryGirl.create(:entrada,:ingresso => ingresso ,:museuLocal => museuLocal)
		visit entradas_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_entrada
		fill_in 'Preço', :with => "20.0"
		select 'meia', from: 'Ingresso'
		select 'MAM', from: 'Museu'
		click_button 'Salvar'
		expect(page).to have_content 'Preço: 20.0'
		expect(page).to have_content 'Ingresso: meia'
		expect(page).to have_content 'Museu: MAM'
	end
end
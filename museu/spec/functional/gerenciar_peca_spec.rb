# coding: utf-8
require 'rails_helper'
feature 'gerenciar Peca' do
	before :each do
		create(:exposicao, nome: 'expo',paisOrigem: 'pais')
		create(:autor, nome: 'nome', nacionalidade: 'nacionalidade', resumoBiografia: 'resumo')
		create(:tipo_peca, descricao: 'quadro')
		create(:periodo_literario,nome: 'nome', anoInicio: '90', anoFim: '20', descricao: 'descricao')
	end
	let(:exposicao) {create(:exposicao, nome: 'exposicao',paisOrigem: 'pais')}
	let(:autor){create(:autor, nome: 'autor', nacionalidade: 'nacionalidade', resumoBiografia: 'resumo')}
	let(:tipoPeca) {create(:tipo_peca, descricao: 'foto')}
	let(:periodoLiterario) {create(:periodo_literario,nome: 'barroco', anoInicio: '90', anoFim: '20', descricao: 'descricao')}
	scenario 'incluir Peca' do # , :js => true do
		visit new_peca_path
		preencher_e_verificar_peca
	end
	scenario 'alterar Peca' do #, :js => true do
		peca = FactoryGirl.create(:peca,:exposicao => exposicao, :autor => autor, :tipoPeca => tipoPeca, :periodoLiterario => periodoLiterario)
		visit edit_peca_path(peca)
		preencher_e_verificar_peca
	end
	scenario 'excluir peca' do #, :javascript => true do
		peca = FactoryGirl.create(:peca,:exposicao => exposicao, :autor => autor, :tipoPeca => tipoPeca, :periodoLiterario => periodoLiterario)
		visit pecas_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_peca
		fill_in 'Nome', :with => "nome"
		fill_in 'Ano', :with => "73"
		fill_in 'Descrição', :with => "descricao"
		select 'expo', from: 'Exposição'
		select 'nome', from: 'Autor'
		select 'quadro', from: 'Tipo de Peça'
		select 'nome', from: 'Período Literário'
		click_button 'Salvar'
		expect(page).to have_content 'Nome: nome'
		expect(page).to have_content 'Ano: 73'
		expect(page).to have_content 'Descrição: descricao'
		expect(page).to have_content 'Exposição: expo'
		expect(page).to have_content 'Autor: nome'
		expect(page).to have_content 'Tipo de Peça: quadro'
		expect(page).to have_content 'Período Literário: nome'
	end
end


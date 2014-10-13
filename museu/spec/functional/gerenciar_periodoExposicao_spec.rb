# coding: utf-8
require 'rails_helper'
feature 'gerenciar PeriodoExposicao' do
	before :each do
		create(:exposicao, nome: 'exposicao', paisOrigem: 'pais')
		create(:museu_local, nome: 'MAM', endereco: 'Rio', horario:'20h')
	end
	let(:exposicao) {create(:exposicao, nome: 'expo', paisOrigem: 'pais')}
	let(:museuLocal){create(:museu_local, nome: 'MAR', endereco: 'Rio', horario:'20h')}
	scenario 'incluir PeriodoExposicao' do # , :js => true do
		visit new_periodo_exposicao_path
		preencher_e_verificar_periodo_exposicao
	end
	scenario 'alterar PeriodoExposicao' do #, :js => true do
		periodo_exposicao = FactoryGirl.create(:periodo_exposicao,:exposicao => exposicao, :museuLocal => museuLocal)
		visit edit_periodo_exposicao_path(periodo_exposicao)
		preencher_e_verificar_periodo_exposicao
	end
	scenario 'excluir periodoExposicao' do #, :javascript => true do
		periodo_exposicao = FactoryGirl.create(:periodo_exposicao,:exposicao => exposicao, :museuLocal => museuLocal)
		visit periodo_exposicoes_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_periodo_exposicao
		fill_in 'Data inicio', :with => "13/05/2014"
		fill_in 'Data fim', :with => "13/06/2014"
		select 'exposicao', from: 'Exposicao'
		select 'MAM', from: 'Museulocal'
		click_button 'Salvar'
		expect(page).to have_content 'Data inicio: 2014-05-13'
		expect(page).to have_content 'Data fim: 2014-06-13'
		expect(page).to have_content 'Exposicao: exposicao'
		expect(page).to have_content 'Museulocal: MAM'
	end
end


# coding: utf-8
require 'rails_helper'
feature 'gerenciar TipoPeca' do
	scenario 'incluir TipoPeca' do # , :js => true do
		visit new_tipo_peca_path
		preencher_e_verificar_tipoPeca
	end
	scenario 'alterar TipoPeca' do #, :js => true do
		tipoPeca = FactoryGirl.create(:tipo_peca)
		visit edit_tipo_peca_path(tipoPeca)
		preencher_e_verificar_tipoPeca
	end
	scenario 'excluir tipoPeca' do #, :javascript => true do
		tipoPeca = FactoryGirl.create(:tipo_peca)
		visit tipo_pecas_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_tipoPeca
		fill_in 'Descricao', :with => 'quadro'
		click_button 'Salvar'
		expect(page).to have_content 'Descricao: quadro'
	end
end

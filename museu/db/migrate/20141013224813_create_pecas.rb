class CreatePecas < ActiveRecord::Migration
  def change
    create_table :pecas do |t|
      t.string :nome
      t.integer :ano
      t.string :descricao
      t.references :exposicao, index: true
      t.references :autor, index: true
      t.references :tipoPeca, index: true
      t.references :periodoLiterario, index: true

      t.timestamps
    end
  end
end

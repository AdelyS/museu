class CreatePeriodoLiterarios < ActiveRecord::Migration
  def change
    create_table :periodo_literarios do |t|
      t.string :nome
      t.integer :anoInicio
      t.integer :anoFim
      t.string :descricao

      t.timestamps
    end
  end
end

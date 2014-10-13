class CreatePeriodoExposicoes < ActiveRecord::Migration
  def change
    create_table :periodo_exposicoes do |t|
      t.date :data_inicio
      t.date :data_fim
      t.references :museuLocal, index: true
      t.references :exposicao, index: true

      t.timestamps
    end
  end
end

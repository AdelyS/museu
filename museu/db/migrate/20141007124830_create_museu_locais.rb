class CreateMuseuLocais < ActiveRecord::Migration
  def change
    create_table :museu_locais do |t|
      t.string :nome
      t.string :endereco
      t.string :horario

      t.timestamps
    end
  end
end

class CreateEntradas < ActiveRecord::Migration
  def change
    create_table :entradas do |t|
      t.float :preco
      t.references :ingresso, index: true
      t.references :museuLocal, index: true

      t.timestamps
    end
  end
end

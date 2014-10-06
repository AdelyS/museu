class CreateTipoPecas < ActiveRecord::Migration
  def change
    create_table :tipo_pecas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

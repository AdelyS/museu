class CreateExposicoes < ActiveRecord::Migration
  def change
    create_table :exposicoes do |t|
      t.string :nome
      t.string :paisOrigem

      t.timestamps
    end
  end
end

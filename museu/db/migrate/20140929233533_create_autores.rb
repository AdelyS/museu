class CreateAutores < ActiveRecord::Migration
  def change
    create_table :autores do |t|
      t.string :nome
      t.string :nacionalidade
      t.string :resumoBiografia

      t.timestamps
    end
  end
end

class CreateIngressos < ActiveRecord::Migration
  def change
    create_table :ingressos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end

class CreateComputadors < ActiveRecord::Migration
  def change
    create_table :computadors do |t|
      t.string :procesador
      t.integer :cant_mem
      t.integer :cant_disco
      t.string :uni_disco
      t.string :sisope
      t.string :tarj_video
      t.date :feac_fab

      t.timestamps null: false
    end
  end
end

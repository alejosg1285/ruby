class CreateAssemblies < ActiveRecord::Migration
  def change
    create_table :assemblies do |t|
      t.string :router

      t.timestamps null: false
    end
  end
end

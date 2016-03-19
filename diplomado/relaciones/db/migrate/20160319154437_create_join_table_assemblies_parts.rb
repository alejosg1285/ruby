class CreateJoinTableAssembliesParts < ActiveRecord::Migration
  def change
    create_join_table :parts, :assemblies
  end
end

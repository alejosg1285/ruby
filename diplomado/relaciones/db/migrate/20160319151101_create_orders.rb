class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :track
      t.date :date_order
      t.integer :value

      t.timestamps null: false
    end
  end
end

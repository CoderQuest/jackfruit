class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :stock_name
      t.integer :val_1
      t.integer :val_2
      t.integer :val_3

      t.timestamps null: false
    end
  end
end

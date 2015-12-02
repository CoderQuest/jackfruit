class CreateFinanceTables < ActiveRecord::Migration
  def change
    create_table :finance_tables do |t|
      t.string :stock_name
      t.string :val_1
      t.string :val_2
      t.string :val_3

      t.timestamps null: false
    end
  end
end

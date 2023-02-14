class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :barcode
      t.string :category
      t.integer :manufacturer_id
      t.float :buy_price
      t.float :sell_price
      t.string :item_name
      t.integer :item_stock

      t.timestamps
    end
  end
end

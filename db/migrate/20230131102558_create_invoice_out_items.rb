class CreateInvoiceOutItems < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_out_items do |t|
      t.integer :invoice_out_id
      t.integer :item_id
      t.integer :item_quantity
      t.integer :price

      t.timestamps
    end
  end
end

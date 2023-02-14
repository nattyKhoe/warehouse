class CreateInvoiceInItems < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_in_items do |t|
      t.integer :invoice_in_id
      t.integer :item_id
      t.integer :item_quantity
      t.integer :price

      t.timestamps
    end
  end
end

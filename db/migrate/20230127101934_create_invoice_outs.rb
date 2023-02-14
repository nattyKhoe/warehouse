class CreateInvoiceOuts < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_outs do |t|
      t.string :invoice_no
      t.date :date
      t.integer :store_id
      t.date :due_date
      t.float :tax
      t.float :total
      t.float :grand_total

      t.timestamps
    end
  end
end

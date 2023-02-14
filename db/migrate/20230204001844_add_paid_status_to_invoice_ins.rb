class AddPaidStatusToInvoiceIns < ActiveRecord::Migration[6.1]
  def change
    add_column :invoice_ins, :paid_status, :boolean
  end
end

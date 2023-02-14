class AddPaidStatusToInvoiceOuts < ActiveRecord::Migration[6.1]
  def change
    add_column :invoice_outs, :paid_status, :boolean
  end
end

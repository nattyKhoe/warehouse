class InvoiceOutItem < ApplicationRecord
    belongs_to :invoice_out
    belongs_to :item
end

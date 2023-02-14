class InvoiceInItem < ApplicationRecord
    belongs_to :invoice_in
    belongs_to :item
end

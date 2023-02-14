class InvoiceOut < ApplicationRecord
    belongs_to :store
    has_many :invoice_out_items, dependent: :destroy
    validates :due_date, numericality:{
        greater_than_or_equal_to Date.today
        less_than_or_equal_to Date.today + 30
    }

    validates :invoice_no, uniqueness: true
end

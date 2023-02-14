class InvoiceIn < ApplicationRecord
    has_many :invoice_in_items, dependent: :destroy
    belongs_to :manufacturer

    validates :due_date, numericality:{
        greater_than_or_equal_to Date.today
        less_than_or_equal_to Date.today + 30
    }

    validates :invoice_no, uniqueness: true
end

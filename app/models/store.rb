class Store < ApplicationRecord
    has_many :invoice_out

    validates :ABN, uniqueness: true
    validates :store_code, uniqueness: true
    validates :store_discount, numericality: {
        greater_than_or_equal_to: 0,
        less_than_or_equal_to: 8
    }

    validates :store_plafond, numericality: {
        greater_than_or_equal_to:0,
        less_than_or_equal_to:100000
    }
end

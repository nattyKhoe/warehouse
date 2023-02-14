class Item < ApplicationRecord
    has_many :invoice_in_items
    has_many :invoice_out_items
    belongs_to :manufacturer

    validates :barcode, uniqueness: true
    #stock item cannot be negative
    validates :item_stock, numericality: {greater_than_or_equal_to: 0}
    #buying price cannot be negative
    validates :buy_price, numericality: {greater_than: 0}
    #to make sure that the item was not sold lower than buying price
    validate :sell_price_is_valid

    private

    def sell_price_is_valid
        error_msg = 'Selling price cannot be lower than buying price'
        errors.add(:sell_price, error_msg) if sell_price < buy_price
    end
end

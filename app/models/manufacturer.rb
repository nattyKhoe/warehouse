class Manufacturer < ApplicationRecord
    has_many :items
    has_many :invoice_ins

    validates :ABN, uniqueness: true
    validates :manufacturer_code, uniqueness: true
    validates :manufacturer_name, uniqueness: true
end

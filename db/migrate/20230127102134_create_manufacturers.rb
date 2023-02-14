class CreateManufacturers < ActiveRecord::Migration[6.1]
  def change
    create_table :manufacturers do |t|
      t.integer :ABN
      t.string :manufacturer_code
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end

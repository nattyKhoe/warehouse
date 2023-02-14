class AddManufacturerNameToManufacturers < ActiveRecord::Migration[6.1]
  def change
    add_column :manufacturers, :manufacturer_name, :string
  end
end

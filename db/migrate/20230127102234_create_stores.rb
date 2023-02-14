class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.integer :ABN
      t.string :store_code
      t.string :address
      t.string :city
      t.string :store_name
      t.integer :store_discount
      t.integer :store_plafond

      t.timestamps
    end
  end
end

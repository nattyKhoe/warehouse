class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :account_type
      t.date :DOB

      t.timestamps
    end
  end
end

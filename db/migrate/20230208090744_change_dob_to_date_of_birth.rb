class ChangeDobToDateOfBirth < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :DOB, :date_of_birth
  end
end

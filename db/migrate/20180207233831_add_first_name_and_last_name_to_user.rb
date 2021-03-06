class AddFirstNameAndLastNameToUser < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :first_name, :string, null: true
    add_column :users, :last_name, :string, null: true
  end

  def down
    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end

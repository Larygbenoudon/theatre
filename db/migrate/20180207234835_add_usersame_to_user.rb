class AddUsersameToUser < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
  def down
    remove_column :users, :username
  end
end

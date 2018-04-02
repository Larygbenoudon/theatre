class AddUserToLieu < ActiveRecord::Migration[5.1]
  def change
    add_column :lieus, :user_id, :integer
  end
end

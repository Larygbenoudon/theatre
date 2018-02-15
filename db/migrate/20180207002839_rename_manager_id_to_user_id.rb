class RenameManagerIdToUserId < ActiveRecord::Migration[5.1]
  def change
    rename_column :theatres, :manager_id, :user_id
    rename_column :companies, :manager_id, :user_id
  end
end

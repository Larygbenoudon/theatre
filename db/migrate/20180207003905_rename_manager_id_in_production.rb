class RenameManagerIdInProduction < ActiveRecord::Migration[5.1]
  def change
    rename_column :productions, :manager_id, :user_id
  end
end

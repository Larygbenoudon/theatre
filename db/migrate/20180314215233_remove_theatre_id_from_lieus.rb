class RemoveTheatreIdFromLieus < ActiveRecord::Migration[5.1]
  def change
    remove_column :lieus, :theatre_id, :integer
  end
end

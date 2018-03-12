class ChangeTypeToTheatreType < ActiveRecord::Migration[5.1]
  def change
    rename_column :theatres, :type, :theatre_type
  end
end

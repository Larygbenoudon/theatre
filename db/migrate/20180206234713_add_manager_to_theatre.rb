class AddManagerToTheatre < ActiveRecord::Migration[5.1]
  def change
    add_column :theatres, :manager_id, :integer
  end
end

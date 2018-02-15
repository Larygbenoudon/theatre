class AddProductionToTheatre < ActiveRecord::Migration[5.1]
  def change
    add_column :theatres, :production_id, :integer
  end
end

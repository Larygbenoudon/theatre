class AddLieuToTheatre < ActiveRecord::Migration[5.1]
  def change
    add_column :theatres, :lieu_id, :integer
  end
end

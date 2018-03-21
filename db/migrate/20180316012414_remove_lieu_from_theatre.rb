class RemoveLieuFromTheatre < ActiveRecord::Migration[5.1]
  def change
    remove_column :theatres, :lieu, :string
  end
end

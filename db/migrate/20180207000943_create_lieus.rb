class CreateLieus < ActiveRecord::Migration[5.1]
  def change
    create_table :lieus do |t|
      t.string :name
      t.string :adresse
      t.string :photo
      t.integer :theatre_id

      t.timestamps
    end
  end
end

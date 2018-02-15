class CreateTheatres < ActiveRecord::Migration[5.1]
  def change
    create_table :theatres do |t|
      t.string :titre
      t.string :lieu
      t.string :type
      t.string :longueur
      t.string :largeur
      t.string :surface

      t.timestamps
    end
  end
end

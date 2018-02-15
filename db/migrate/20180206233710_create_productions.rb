class CreateProductions < ActiveRecord::Migration[5.1]
  def change
    create_table :productions do |t|
      t.string :name
      t.string :description
      t.string :adresse
      t.integer :manager_id
      t.string :photo

      t.timestamps
    end
  end
end

class AddCompanyToTheatre < ActiveRecord::Migration[5.1]
  def change
    add_column :theatres, :company_id, :integer
  end
end

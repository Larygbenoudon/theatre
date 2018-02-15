json.extract! production, :id, :name, :description, :adresse, :manager_id, :photo, :created_at, :updated_at
json.url production_url(production, format: :json)

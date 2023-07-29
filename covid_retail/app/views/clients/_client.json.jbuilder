json.extract! client, :id, :name, :email, :client_type_id, :created_at, :updated_at
json.url client_url(client, format: :json)

json.extract! cart, :id, :namecart, :userid, :status, :creation_timestamp, :created_at, :updated_at
json.url cart_url(cart, format: :json)

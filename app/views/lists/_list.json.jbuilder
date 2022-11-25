json.extract! list, :id, :cartid, :price, :quantity, :code, :created_at, :updated_at
json.url list_url(list, format: :json)

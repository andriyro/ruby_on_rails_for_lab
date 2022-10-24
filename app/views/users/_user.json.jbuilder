json.extract! user, :id, :First_name, :Last_name, :Phone, :Email, :Address, :created_at, :updated_at
json.url user_url(user, format: :json)

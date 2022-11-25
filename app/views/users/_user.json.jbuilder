json.extract! user, :id, :First_name, :Last_name, :Phone, :Email, :Address, :created_at, :updated_at, :userrole_id
json.url user_url(user, format: :json)

json.array!(@users) do |user|
  json.extract! user, :id, :name, :address, :country, :state, :city
  json.url user_url(user, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :id, :name, :unit, :is_admin, :role
  json.url user_url(user, format: :json)
end

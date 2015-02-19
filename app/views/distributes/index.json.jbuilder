json.array!(@distributes) do |distribute|
  json.extract! distribute, :id, :is_distribute, :user_id, :apply_id
  json.url distribute_url(distribute, format: :json)
end

json.array!(@verifies) do |verify|
  json.extract! verify, :id, :is_pass, :apply_id, :content
  json.url verify_url(verify, format: :json)
end

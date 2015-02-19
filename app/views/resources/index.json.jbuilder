json.array!(@resources) do |resource|
  json.extract! resource, :id, :title, :attcahment
  json.url resource_url(resource, format: :json)
end

json.array!(@applies) do |apply|
  json.extract! apply, :id, :user_id, :project_id, :category_id, :requirement, :site, :facilities, :address, :implement_time, :attachment
  json.url apply_url(apply, format: :json)
end

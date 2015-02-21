json.array!(@notifications) do |notification|
  json.extract! notification, :id, :user_id, :content, :notificationable_type, :notificationable_id
  json.url notification_url(notification, format: :json)
end

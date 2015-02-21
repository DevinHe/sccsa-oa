json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :user_id, :apply_id, :content, :coach, :suggestion, :population, :distribute_advice
  json.url feedback_url(feedback, format: :json)
end

json.array!(@questionnaires) do |questionnaire|
  json.extract! questionnaire, :id, :content, :coaches, :population, :start_time, :situation, :other, :coache_sitution, :coache_other, :distribute_id
  json.url questionnaire_url(questionnaire, format: :json)
end

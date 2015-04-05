class Questionnaire < ActiveRecord::Base
  belongs_to :distribute
  validates :content, :coaches, :population, :start_time, :situation, :other, :coache_sitution, :coache_other, :distribute_id, presence: true
end

class Project < ActiveRecord::Base

  validates :name, :serial, :category_id,presence: true
  belongs_to :category
end

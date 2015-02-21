class Feedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :apply
  has_many :notifications, as: :notificationable, dependent: :destroy
end

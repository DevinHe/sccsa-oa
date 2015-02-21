class Notice < ActiveRecord::Base
  has_many :notifications, as: :notificationable, dependent: :destroy

  validates :title, :content, presence: true
end

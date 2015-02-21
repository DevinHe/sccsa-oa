class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :notificationable, :polymorphic => true

  validates :read, default: false
  validates :notificationable_type, :notificationable_id, :user_id, presence: true
end

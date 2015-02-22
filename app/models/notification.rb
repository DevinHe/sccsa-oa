class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :notificationable, :polymorphic => true

  validates :read, default: false
  validates :notificationable_type, :notificationable_id, :user_id, presence: true

  default_scope { order("created_at DESC") }

  scope :unread, ->(user_id){ where(read: false, user_id: user_id) } #一个用户的未读信息


  def self.notify(user, content, object)
    notification = Notification.new
    notification.user = user
    notification.content = content
    notification.notificationable = object #notificationable = notificationable_type & notificationable_id
    notification.read = false
    notification.save!
  end

end

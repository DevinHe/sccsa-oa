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

#------------------------------------------------------------------------------
# Notification
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true   
# user_id                        integer              true            false  
# content                        varchar              true            false  
# notificationable_type          varchar              true            false  
# notificationable_id            integer              true            false  
# created_at                     datetime             false           false  
# updated_at                     datetime             false           false  
# read                           boolean              true            false  
#
#------------------------------------------------------------------------------

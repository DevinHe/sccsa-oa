class Notice < ActiveRecord::Base
  has_many :notifications, as: :notificationable, dependent: :destroy

  validates :title, :content, presence: true

  default_scope { order("created_at DESC") }

  after_create :new_notification
  after_update :update_notification

  private

  def new_notification
    User.no_admin.each do |user|
      Notification.notify(user, "<a href='/notices/#{self.id}'>有新的协会通知</a>", self)
    end
  end

  def update_notification
    User.no_admin.each do |user|
      Notification.notify(user, "<a href='/notices/#{self.id}'>对已发布的协会通知内容进行更新</a>", self)
    end
  end
end

#------------------------------------------------------------------------------
# Notice
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true   
# title                          varchar              true            false  
# content                        text                 true            false  
# created_at                     datetime             false           false  
# updated_at                     datetime             false           false  
#
#------------------------------------------------------------------------------

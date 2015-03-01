class Feedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :apply
  has_many :notifications, as: :notificationable, dependent: :destroy

  after_create :new_notification
  after_update :update_notification

  private

  def new_notification
    Notification.notify(self.apply.distribute.user, "<a href='/feedbacks/#{self.id}/edit'>#{self.user.unit}已填写项目反馈,需要你填写配送反馈</a>", self)
  end

  def update_notification
    if User.current_user == self.user
     Notification.notify(self.apply.distribute.user, "<a href='/feedbacks/#{self.id}/edit'>#{self.user.unit}已更新反馈表，请注意查看</a>", self)
    elsif User.current_user.distributor?
      admin = User.find(1)
      Notification.notify(admin, "<a href='/feedbacks/#{self.id}'>#{self.user.unit}有新的反馈信息</a>", self)
    end
  end
end

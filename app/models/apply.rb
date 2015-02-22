class Apply < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :distributor, class_name: "User"
  belongs_to :project
  belongs_to :category
  has_many :notifications, as: :notificationable, dependent: :destroy

  mount_uploader :attachment, AttachmentUploader

  after_create :new_notification
  after_update :update_notification

  private

  def new_notification
    admin = User.find(1)
    Notification.notify(admin, "<a href='/applies/#{self.id}'>#{self.user.unit}发送新配送申报", self)
  end

  def update_notification
    if self.is_pass == false
      Notification.notify(admin, "<a href='/applies/#{self.id}'>#{self.user.unit}配送申报被退回", self)
    elsif self.is_pass && self.distributor
      Notification.notify(self.distributor, "<a href='/applies/#{self.id}'>请给#{self.user.unit}安排配送", self)
    elsif self.is_pass && self.is_distribute
      Notification.notify(self.user, "<a href='/applies/#{self.id}'>#{self.distributor.unit}已安排配送", self)
    end


  end


end

class Apply < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :project
  belongs_to :category
  has_many :notifications, as: :notificationable, dependent: :destroy
  has_one :verify, dependent: :destroy
  has_one :distribute, dependent: :destroy

  mount_uploader :attachment, AttachmentUploader

  after_create :new_notification
  after_update :update_notification

  private

  def new_notification
    admin = User.find(1)
    Notification.notify(admin, "<a href='/applies/#{self.id}'>#{self.user.unit}发送新配送申报", self)
  end

  def update_notification
    if self.verify.try(:is_pass) == false
      Notification.notify(admin, "<a href='/applies/#{self.id}'>#{self.user.unit}已重新发送配送申报", self)
    end
  end


end

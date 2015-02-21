class Apply < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :distributor, class_name: "User"
  belongs_to :project
  belongs_to :category
  has_many :notifications, as: :notificationable, dependent: :destroy

  mount_uploader :attachment, AttachmentUploader
end

class Feedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :apply
  has_many :notifications, as: :notificationable, dependent: :destroy
  validates :content,:coach,:suggestion,:population,:attachment, presence: true
  after_create :new_notification
  after_update :update_notification

  mount_uploader :attachment, AttachmentUploader

  private

  def new_notification
    distributor = self.apply.distribute.user
    if distributor.id != 1
      admin = User.find(1)
      Notification.notify(admin, "<a href='/feedbacks/#{self.id}'>申请方: #{self.user.unit}已填写反馈表,请及时查看!</a>", self)
    end
    Notification.notify(distributor, "<a href='/feedbacks/#{self.id}/edit'>#{self.user.unit}已填写项目反馈,需要你填写配送反馈</a>", self)
  end

  def update_notification
    distributor = self.apply.distribute.user
    Notification.notify(self.user, "<a href='/feedbacks/#{self.id}'>#{distributor.unit}已填写反馈表，请注意查看!</a>", self)
    if distributor.id != 1
      admin = User.find(1)
      Notification.notify(admin, "<a href='/feedbacks/#{self.id}'>配送方: #{distributor.unit}已填写反馈表,请及时查看!</a>", self)
    end
  end
end

#------------------------------------------------------------------------------
# Feedback
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true
# user_id                        integer              true            false
# apply_id                       integer              true            false
# content                        text                 true            false
# coach                          text                 true            false
# suggestion                     text                 true            false
# population                     text                 true            false
# distribute_advice              text                 true            false
# created_at                     datetime             false           false
# updated_at                     datetime             false           false
#
#------------------------------------------------------------------------------

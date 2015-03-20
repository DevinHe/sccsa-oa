class Apply < ActiveRecord::Base

  validates :user_id, :project_id, :category_id, :requirement, :site, :facilities, :address, :implement_time, presence: true

  default_scope { order("applies.created_at DESC") }

  belongs_to :user, class_name: "User"
  belongs_to :project
  belongs_to :category
  has_many :notifications, as: :notificationable, dependent: :destroy
  has_one :verify, dependent: :destroy
  has_one :distribute, dependent: :destroy
  has_one :feedback, dependent: :destroy

  after_create :new_notification
  after_update :update_notification

  def distributor
    distribute.user.unit
  end

  private

  def new_notification
    admin = User.find(1)
    Notification.notify(admin, "<a href='/applies/#{self.id}'>#{self.user.unit}发送新配送申报</a>", self)
  end

  def update_notification
    admin = User.find(1)
    if self.verify.try(:is_pass) == false
      Notification.notify(admin, "<a href='/applies/#{self.id}'>#{self.user.unit}已重新发送配送申报</a>", self)
    end
  end


end

#------------------------------------------------------------------------------
# Apply
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true
# user_id                        integer              true            false
# project_id                     integer              true            false
# category_id                    integer              true            false
# requirement                    text                 true            false
# site                           text                 true            false
# facilities                     text                 true            false
# address                        text                 true            false
# implement_time                 text                 true            false
# created_at                     datetime             false           false
# updated_at                     datetime             false           false
#
#------------------------------------------------------------------------------

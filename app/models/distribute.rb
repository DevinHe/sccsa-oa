class Distribute < ActiveRecord::Base
  belongs_to :user
  belongs_to :apply

  validates :user_id, :is_distribute, presence: true

  after_create :new_notification

  private

  def new_notification
    Notification.notify(self.apply.user, "<a href='/applies/#{self.apply_id}'>#{self.user.unit}已安排配送", self.apply) if self.is_distribute
  end

end

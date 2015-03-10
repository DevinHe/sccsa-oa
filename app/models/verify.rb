class Verify < ActiveRecord::Base

  # validates :is_pass, presence: true

  belongs_to :apply
  belongs_to :user  # distributor

  after_create :new_notification
  after_update :update_notification

  private

  def new_notification
    if !self.is_pass
      Notification.notify(self.apply.user, "<a href='/applies/#{self.apply_id}'>#{self.apply.user.unit}配送申报被退回</a>", self.apply)
    elsif self.is_pass
      Notification.notify(self.user, "<a href='/applies/#{self.apply_id}'>请给#{self.apply.user.unit}安排配送</a>", self.apply)
    end
  end

  def update_notification
    if self.is_pass == false
      Notification.notify(self.apply.user, "<a href='/applies/#{self.apply_id}'>#{self.apply.user.unit}配送申报被退回</a>", self.apply)
    elsif self.is_pass && self.user
      Notification.notify(self.user, "<a href='/applies/#{self.apply_id}'>请给#{self.apply.user.unit}安排配送</a>", self.apply)
    end
  end
end

#------------------------------------------------------------------------------
# Verify
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true   
# is_pass                        boolean              true            false  
# apply_id                       integer              true            false  
# content                        text                 true            false  
# created_at                     datetime             false           false  
# updated_at                     datetime             false           false  
# user_id                        integer              true            false  
#
#------------------------------------------------------------------------------

class Distribute < ActiveRecord::Base
  belongs_to :user
  belongs_to :apply

  validates :user_id, :is_distribute, presence: true

  after_create :new_notification

  private

  def new_notification
    if self.is_distribute
    admin = User.find(1)
    Notification.notify(admin, "<a href='/applies/#{self.apply_id}'>#{self.user.unit}已安排配送#{self.apply.user.unit}</a>", self.apply)
    Notification.notify(self.apply.user, "<a href='/applies/#{self.apply_id}'>#{self.user.unit}已安排配送</a>", self.apply)
    end
  end

end

#------------------------------------------------------------------------------
# Distribute
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true   
# is_distribute                  boolean              true            false  
# user_id                        integer              true            false  
# apply_id                       integer              true            false  
# created_at                     datetime             false           false  
# updated_at                     datetime             false           false  
#
#------------------------------------------------------------------------------

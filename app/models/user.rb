class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :unit, :role_id, :password, presence: true
  validates :name, uniqueness: true
  scope :no_admin, ->{ where(is_admin: false) }
  default_scope { order("created_at DESC") }

  after_create :default_values

  belongs_to :role

  has_many :applies, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :distributes, dependent: :destroy
  has_many :verifies, dependent: :destroy

  def self.current_user
    Thread.current[:current_user]
  end

  def self.current_user=(usr)
    Thread.current[:current_user] = usr
  end

  def admin?
    self.is_admin
  end

  def distributor?
    self.role_id == 3
  end

  def applier?
    self.role_id == 2
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end

  private
   def default_values
     self.is_admin ||= false
   end

end

#------------------------------------------------------------------------------
# User
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true
# name                           varchar              false           false
# unit                           varchar              false           false
# is_admin                       boolean              false   f       false
# created_at                     datetime             false           false
# updated_at                     datetime             false           false
# encrypted_password             varchar              false           false
# reset_password_token           varchar              true            false
# reset_password_sent_at         datetime             true            false
# remember_created_at            datetime             true            false
# sign_in_count                  integer              false   0       false
# current_sign_in_at             datetime             true            false
# last_sign_in_at                datetime             true            false
# current_sign_in_ip             varchar              true            false
# last_sign_in_ip                varchar              true            false
# role_id                        integer              true            false
#
#------------------------------------------------------------------------------

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :unit, :role_id, :email, :password, presence: true
  validates :name, :email, uniqueness: true
  scope :no_admin, ->{ where(is_admin: false) }
  default_scope { order("created_at DESC") }

  after_create :default_values

  belongs_to :role

  has_many :notices, dependent: :destroy
  has_many :applies, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :distributes, dependent: :destroy
  has_many :verifies, dependent: :destroy


  def admin?
    self.is_admin
  end

  def distributor?
    self.role_id == 3
  end

  private
   def default_values
     self.is_admin ||= false
   end

end

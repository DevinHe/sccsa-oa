class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :unit, :role_id, :email, :password, presence: true
  validates :name, :email, uniqueness: true

  after_create :default_values

  belongs_to :role


  def admin?
    self.is_admin
  end

  private
   def default_values
     self.is_admin ||= false
   end



end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :unit, :role, :email, :password, presence: true
  validates :name, :email, uniqueness: true

  before_save :default_values


  def admin?
    self.is_admin
  end

  private
   def default_values
     self.is_admin ||= false
     self.role ||= 0
   end



end

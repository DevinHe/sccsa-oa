class User < ActiveRecord::Base
  validates :name, :unit, :role, presence: true
  validates :name, uniqueness: true

  before_save :default_values



  private
   def default_values
     self.is_admin ||= false
     self.role ||= 0
   end

end

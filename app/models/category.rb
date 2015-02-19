class Category < ActiveRecord::Base
  validates :name, presence: true

  has_many :projects
end

#------------------------------------------------------------------------------
# Category
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true   
# name                           varchar              true            false  
# created_at                     datetime             false           false  
# updated_at                     datetime             false           false  
#
#------------------------------------------------------------------------------

class Role < ActiveRecord::Base
  has_one :user
end

#------------------------------------------------------------------------------
# Role
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true   
# name                           varchar              true            false  
# created_at                     datetime             false           false  
# updated_at                     datetime             false           false  
#
#------------------------------------------------------------------------------

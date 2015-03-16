class Project < ActiveRecord::Base

  validates :name, :serial, :category_id,presence: true
  belongs_to :category
end

#------------------------------------------------------------------------------
# Project
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true   
# name                           varchar              true            false  
# serial                         varchar              true            false  
# category_id                    integer              true            false  
# created_at                     datetime             false           false  
# updated_at                     datetime             false           false  
#
#------------------------------------------------------------------------------

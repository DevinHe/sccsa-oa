class Resource < ActiveRecord::Base

  validates :title, :attachment, presence: true

  default_scope { order("created_at DESC") }

  mount_uploader :attachment, AttachmentUploader
end

#------------------------------------------------------------------------------
# Resource
#
# Name                           SQL Type             Null    Default Primary
# ------------------------------ -------------------- ------- ------- -------
# id                             INTEGER              false           true   
# title                          varchar              true            false  
# attachment                     varchar              true            false  
# created_at                     datetime             false           false  
# updated_at                     datetime             false           false  
#
#------------------------------------------------------------------------------

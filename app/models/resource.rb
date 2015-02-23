class Resource < ActiveRecord::Base

  validates :title, :attachment, presence: true

  default_scope { order("created_at DESC") }

  mount_uploader :attachment, AttachmentUploader
end

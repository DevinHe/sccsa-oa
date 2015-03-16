class RemoveAttachmentForApplies < ActiveRecord::Migration
  def change
    remove_column :applies, :attachment, :string
    add_column :feedbacks, :attachment, :string
  end
end

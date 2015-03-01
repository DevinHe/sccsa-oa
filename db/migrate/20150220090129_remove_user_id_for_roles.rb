class RemoveUserIdForRoles < ActiveRecord::Migration
  def change
    remove_column :roles, :user_id, :integer
  end
end

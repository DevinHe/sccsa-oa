class AddUserIdToVerifies < ActiveRecord::Migration
  def change
    add_reference :verifies, :user, index: true
    add_foreign_key :verifies, :users
  end
end

class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.references :user, index: true
      t.string :content
      t.string :notificationable_type
      t.integer :notificationable_id

      t.timestamps null: false
    end
    add_foreign_key :notifications, :users
  end
end

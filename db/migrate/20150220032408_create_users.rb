class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.string :unit, null: false, default: ""
      t.boolean :is_admin, null: false, default: false
      t.integer :role, null: false, default: 0

      t.timestamps null: false
    end
    add_index :users, :name, unique: true
  end
end

class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.references :user, index: true
      t.references :project, index: true
      t.references :category, index: true
      t.text :requirement
      t.text :site
      t.text :facilities
      t.text :address
      t.datetime :implement_time
      t.boolean :is_back
      t.boolean :is_pass
      t.boolean :is_distribute
      t.string :attachment

      t.timestamps null: false
    end
    add_foreign_key :applies, :users
    add_foreign_key :applies, :projects
    add_foreign_key :applies, :categories
  end
end

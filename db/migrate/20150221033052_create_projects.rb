class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :serial
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :projects, :categories
  end
end

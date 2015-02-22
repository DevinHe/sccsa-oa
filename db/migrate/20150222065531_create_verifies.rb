class CreateVerifies < ActiveRecord::Migration
  def change
    create_table :verifies do |t|
      t.boolean :is_pass
      t.references :apply, index: true
      t.text :content

      t.timestamps null: false
    end
    add_foreign_key :verifies, :applies
  end
end

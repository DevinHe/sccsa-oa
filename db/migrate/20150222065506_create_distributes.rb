class CreateDistributes < ActiveRecord::Migration
  def change
    create_table :distributes do |t|
      t.boolean :is_distribute
      t.references :user, index: true
      t.references :apply, index: true

      t.timestamps null: false
    end
    add_foreign_key :distributes, :users
    add_foreign_key :distributes, :applies
  end
end

class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.references :user, index: true
      t.references :apply, index: true
      t.text :content
      t.text :coach
      t.text :suggestion
      t.text :population
      t.text :distribute_advice

      t.timestamps null: false
    end
    add_foreign_key :feedbacks, :users
    add_foreign_key :feedbacks, :applies
  end
end

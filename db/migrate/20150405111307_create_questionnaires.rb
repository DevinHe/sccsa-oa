class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.text :content
      t.string :coaches
      t.string :population
      t.datetime :start_time
      t.string :situation
      t.text :other
      t.string :coache_sitution
      t.string :coache_other
      t.references :distribute, index: true

      t.timestamps null: false
    end
    add_foreign_key :questionnaires, :distributes
  end
end

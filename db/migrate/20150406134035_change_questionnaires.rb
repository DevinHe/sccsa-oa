class ChangeQuestionnaires < ActiveRecord::Migration
  def change
    change_column :questionnaires, :start_time, :string
    change_column :questionnaires, :coache_sitution, :text
    change_column :questionnaires, :coache_other, :text
    change_column :projects, :description, :text
  end
end

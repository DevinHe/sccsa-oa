class ChangeImplementTimeForApplies < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :applies do |t|
        dir.up {t.change :implement_time, :text}
        dir.down {t.change :implement_time, :datetime}
      end
    end
  end
end

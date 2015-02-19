class AddImplementDateForApplies < ActiveRecord::Migration
  def change
    add_column :applies, :implement_date, :date
  end
end

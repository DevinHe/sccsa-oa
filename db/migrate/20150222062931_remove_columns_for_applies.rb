class RemoveColumnsForApplies < ActiveRecord::Migration
  def change
    remove_column :applies, :is_pass, :boolean
    remove_column :applies, :is_back, :boolean
    remove_column :applies, :is_distribute, :boolean
    remove_column :applies, :distributor_id, :integer
  end
end

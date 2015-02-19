class AddDistributorIdToApplies < ActiveRecord::Migration
  def change
    add_column :applies, :distributor_id, :integer
  end
end

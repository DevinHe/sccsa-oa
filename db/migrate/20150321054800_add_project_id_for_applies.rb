class AddProjectIdForApplies < ActiveRecord::Migration
  def change
    add_column :applies, :p_serial, :string
    add_index  :applies, :p_serial, unique: true
  end
end

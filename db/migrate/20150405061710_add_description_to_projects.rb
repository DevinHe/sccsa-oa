class AddDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :description, :string
    add_column :distributes, :coaches, :string
    add_column :distributes, :phone, :string
    add_column :applies, :address_name, :string
    remove_column :applies, :implement_date, :date
    change_column :applies, :implement_time, :datetime
    add_column :applies, :contacts, :string
    add_column :applies, :phone, :string
  end
end

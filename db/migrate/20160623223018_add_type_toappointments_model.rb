class AddTypeToappointmentsModel < ActiveRecord::Migration
  def change
  	add_column :appointments, :type, :string, default: "sale"
  	add_column :appointments, :hours, :integer, default: 3
  end
end

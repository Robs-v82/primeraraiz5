class RenameTypeToappointmentsModel < ActiveRecord::Migration
  def change
  	rename_column :appointments, :type, :kind
  end
end

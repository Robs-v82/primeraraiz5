class ChangeDataTypeToTime < ActiveRecord::Migration
  def change
		remove_column :appointments, :date
		remove_column :appointments, :time
		add_column :appointments, :date, :date
		add_column :appointments, :time, :time
  end
end

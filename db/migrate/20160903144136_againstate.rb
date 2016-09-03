class Againstate < ActiveRecord::Migration
  def change
  	remove_column :contacts, :state
  	add_column :contacts, :state, :string
  	change_column_default(:contacts, :state, "Ciudad de México")
  end
end

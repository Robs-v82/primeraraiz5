class Againstate < ActiveRecord::Migration
  def change
  	add_column :contacts, :state, :string
  	change_column_default(:contacts, :state, "Ciudad de México")
  end
end

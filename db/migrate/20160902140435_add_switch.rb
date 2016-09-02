class AddSwitch < ActiveRecord::Migration
  def change
  	add_column :contacts, :subscription, :boolean, default: true
  end
end

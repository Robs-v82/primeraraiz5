class OperationChanges < ActiveRecord::Migration
  def change
	remove_column :operations, :sedena 
	remove_column :operations, :semar
	remove_column :operations, :pf
	remove_column :operations, :prg
	remove_column :operations, :state_in
	remove_column :operations, :municipality_in
	add_column :operations, :sedena,:boolean 
	add_column :operations, :semar,:boolean
	add_column :operations, :pf,:boolean
	add_column :operations, :prg,:boolean
	add_column :operations, :state_in,:boolean
	add_column :operations, :municipality_in,:boolean
  end
end
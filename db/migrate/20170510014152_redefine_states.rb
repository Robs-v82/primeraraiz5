class RedefineStates < ActiveRecord::Migration
  def change
  	remove_column :states, :name
  	remove_column :states, :key
  end
end

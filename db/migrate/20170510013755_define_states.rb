class DefineStates < ActiveRecord::Migration
  def change
  	add_column :states, :name, :string
  	add_column :states, :key, :integer
  end
end

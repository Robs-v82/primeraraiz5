class AddDefaultValueToAgentsAdmin < ActiveRecord::Migration
  def change
  	change_column :agents, :admin, :boolean, :default => false
  end
end

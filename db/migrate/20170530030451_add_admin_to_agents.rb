class AddAdminToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :admin, :boolean
  end
end

class RemoveStateIdfromOperations < ActiveRecord::Migration
  def change
  	add_column :operations, :clave_estado, :string 
  end
end

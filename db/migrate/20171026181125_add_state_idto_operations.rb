class AddStateIdtoOperations < ActiveRecord::Migration
  def change
  	add_reference :operations, :state, foreign_key: true 
  end
end

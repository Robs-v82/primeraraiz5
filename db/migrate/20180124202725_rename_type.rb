class RenameType < ActiveRecord::Migration
  def change
  	rename_column :displacements, :type, :type_of_displacement
  end
end

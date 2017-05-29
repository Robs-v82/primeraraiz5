class RemoveDefaultFromInstitution < ActiveRecord::Migration
  def change
  	change_column_default(:institutions, :color, nil)
  end
end

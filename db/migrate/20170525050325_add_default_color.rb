class AddDefaultColor < ActiveRecord::Migration
  def change
  	change_column :institutions, :color, :string, :default => "#ffffff"
  end
end

class AddMetroArea < ActiveRecord::Migration
  def change
  	add_column :areas, :metro_area, :string
  end
end

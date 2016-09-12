class AddAlt < ActiveRecord::Migration
  def change
  	add_column :posts, :alt, :string
  end
end

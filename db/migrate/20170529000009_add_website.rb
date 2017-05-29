class AddWebsite < ActiveRecord::Migration
  def change
  	add_column :institutions, :website, :string
  end
end

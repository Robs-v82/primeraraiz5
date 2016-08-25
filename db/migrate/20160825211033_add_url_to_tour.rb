class AddUrlToTour < ActiveRecord::Migration
  def change
  	  	add_column :tours, :public_url, :string
  end
end

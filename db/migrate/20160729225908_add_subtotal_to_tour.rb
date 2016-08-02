class AddSubtotalToTour < ActiveRecord::Migration
  def change
  	add_column :tours, :subtotal, :integer
  end
end

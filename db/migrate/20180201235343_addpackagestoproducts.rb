class Addpackagestoproducts < ActiveRecord::Migration
  def change
  	add_reference :products, :package, index: true
  end
end

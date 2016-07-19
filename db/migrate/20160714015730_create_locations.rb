class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street
      t.string :number
      t.string :unit
      t.references :area, index: true
      t.string :comment

      t.timestamps
    end
  end
end

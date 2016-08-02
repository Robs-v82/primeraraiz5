class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :size
      t.string :status
      t.integer :model_fee
      t.integer :floorplan_fee
      t.integer :vat
      t.integer :total
      t.references :location, index: true

      t.timestamps
    end
  end
end

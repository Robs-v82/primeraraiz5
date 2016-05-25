class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :zip
      t.string :zone
      t.string :district

      t.timestamps
    end
  end
end

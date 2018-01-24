class CreateDisplacements < ActiveRecord::Migration
  def change
    create_table :displacements do |t|
      t.date :date
      t.string :type
      t.string :source
      t.integer :no_individuals
      t.integer :no_families
      t.references :municipality, index: true
      t.string :localities

      t.timestamps
    end
  end
end

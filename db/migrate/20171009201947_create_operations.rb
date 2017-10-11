class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.date :date
      t.references :municipality, index: true
      t.string :name
      t.string :source
      t.string :scope
      t.string :location
      t.binary :sedena
      t.binary :semar
      t.binary :pf
      t.binary :prg
      t.binary :state_in
      t.binary :municipality_in
      t.integer :manpower
      t.string :goals

      t.timestamps
    end
  end
end

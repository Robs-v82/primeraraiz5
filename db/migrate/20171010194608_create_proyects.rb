class CreateProyects < ActiveRecord::Migration
  def change
    create_table :proyects do |t|
      t.integer :serial_no
      t.date :date
      t.string :name
      t.string :source
      t.string :scope
      t.string :location
      t.references :state, index: true
      t.references :municipality, index: true

      t.timestamps
    end
  end
end

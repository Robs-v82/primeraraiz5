class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :serial_no
      t.references :operation, index: true
      t.references :municipality, index: true
      t.string :locality
      t.string :type_of_place
      t.string :reference
      t.integer :zip
      t.date :date
      t.string :source
      t.string :type_of_event
      t.string :subtype_of_event
      t.string :target_organization
      t.string :type_of_aggressor
      t.string :aggressor_name
      t.string :identity
      t.string :notes

      t.timestamps
    end
  end
end

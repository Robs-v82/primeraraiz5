class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time
      t.string :status
      t.references :property, index: true

      t.timestamps
    end
  end
end

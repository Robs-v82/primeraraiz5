class TurnAppointmentsPolymorphic < ActiveRecord::Migration
  def change
  	drop_table :appointments
  	create_table :appointments do |t|
	    t.string   "status"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.date     "date"
	    t.time     "time"
	    t.string   "kind",        default: "sale"
	    t.integer  "hours",       default: 3
		t.integer :appointable_id
		t.string  :appointable_type
    end
 
    add_index :appointments, [:appointable_type, :appointable_id]
  end
end

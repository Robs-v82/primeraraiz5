# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160903132859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adds", force: true do |t|
    t.string   "website"
    t.string   "url"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "adds", ["property_id"], name: "index_adds_on_property_id", using: :btree

  create_table "agents", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "mobile_phone"
    t.string   "other_phone"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "appointments", force: true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
    t.time     "time"
    t.string   "kind",             default: "sale"
    t.integer  "hours",            default: 3
    t.integer  "appointable_id"
    t.string   "appointable_type"
  end

  add_index "appointments", ["appointable_type", "appointable_id"], name: "index_appointments_on_appointable_type_and_appointable_id", using: :btree

  create_table "areas", force: true do |t|
    t.string   "name"
    t.string   "zip"
    t.string   "zone"
    t.string   "district"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobile_phone"
    t.string   "other_phone"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobile_phone"
    t.string   "other_phone"
    t.string   "category",     default: "general"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "subscription", default: true
    t.string   "organization"
    t.string   "extension"
  end

  add_index "contacts", ["client_id"], name: "index_contacts_on_client_id", using: :btree

  create_table "listings", force: true do |t|
    t.string   "website"
    t.string   "url"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "listings", ["property_id"], name: "index_listings_on_property_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "street"
    t.string   "number"
    t.string   "unit"
    t.integer  "area_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  add_index "locations", ["area_id"], name: "index_locations_on_area_id", using: :btree
  add_index "locations", ["client_id"], name: "index_locations_on_client_id", using: :btree

  create_table "neighborhoods", force: true do |t|
    t.string   "name"
    t.string   "zip"
    t.string   "zone"
    t.string   "district"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "street"
    t.string   "number"
    t.string   "unit"
    t.integer  "user_id"
    t.integer  "agent_id"
    t.integer  "neighborhood_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "owner_first_name"
    t.string   "owner_last_name"
    t.string   "owner_second_last_name"
  end

  add_index "properties", ["agent_id"], name: "index_properties_on_agent_id", using: :btree
  add_index "properties", ["neighborhood_id"], name: "index_properties_on_neighborhood_id", using: :btree
  add_index "properties", ["user_id"], name: "index_properties_on_user_id", using: :btree

  create_table "states", force: true do |t|
    t.string   "clave_estado"
    t.string   "estado"
    t.string   "iso_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tours", force: true do |t|
    t.string   "size"
    t.string   "status"
    t.integer  "model_fee"
    t.integer  "floorplan_fee"
    t.integer  "vat"
    t.integer  "total"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subtotal"
    t.string   "public_url"
  end

  add_index "tours", ["location_id"], name: "index_tours_on_location_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.string   "mobile_phone"
    t.string   "other_phone"
    t.string   "contact"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

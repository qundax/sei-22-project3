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

ActiveRecord::Schema.define(version: 2020_05_22_030243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "carparks", force: :cascade do |t|
    t.string "location"
    t.integer "totallots"
    t.integer "reservedlots", default: 0
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "region_id"
    t.index ["region_id"], name: "index_carparks_on_region_id"
  end

  create_table "lots", force: :cascade do |t|
    t.string "lotNumber"
    t.boolean "taken", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "carpark_id"
    t.bigint "vehicle_id"
    t.index ["carpark_id"], name: "index_lots_on_carpark_id"
    t.index ["vehicle_id"], name: "index_lots_on_vehicle_id"
  end

  create_table "offences", force: :cascade do |t|
    t.string "offendingPlateNumber"
    t.bigint "lot_id"
    t.bigint "carpark_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carpark_id"], name: "index_offences_on_carpark_id"
    t.index ["lot_id"], name: "index_offences_on_lot_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "regionname"
    t.string "postalcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "summons", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_summons_on_email", unique: true
    t.index ["reset_password_token"], name: "index_summons_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "license_plate"
    t.string "vehicle_model"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

  add_foreign_key "carparks", "regions"
  add_foreign_key "lots", "carparks"
  add_foreign_key "lots", "vehicles"
  add_foreign_key "vehicles", "users"
end
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

ActiveRecord::Schema.define(version: 20150706213441) do

  create_table "car_files", force: :cascade do |t|
    t.integer  "office_id"
    t.integer  "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "car_files", ["car_id"], name: "index_car_files_on_car_id"
  add_index "car_files", ["office_id"], name: "index_car_files_on_office_id"

  create_table "cars", force: :cascade do |t|
    t.string   "plateNumber"
    t.string   "brand"
    t.string   "model"
    t.integer  "year"
    t.integer  "km"
    t.integer  "owner_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "cars", ["owner_id"], name: "index_cars_on_owner_id"

  create_table "offices", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "workshop_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "offices", ["workshop_id"], name: "index_offices_on_workshop_id"

  create_table "owners", force: :cascade do |t|
    t.string   "nombre"
    t.string   "rut"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.date     "date"
    t.string   "maintenannceDetail"
    t.integer  "carFile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "records", ["carFile_id"], name: "index_records_on_carFile_id"

  create_table "workshops", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

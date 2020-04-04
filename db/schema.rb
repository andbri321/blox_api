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

ActiveRecord::Schema.define(version: 20200402183308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blox_profiles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bloxes", force: :cascade do |t|
    t.string   "title"
    t.integer  "knowledge_area_id"
    t.integer  "functional_area_id"
    t.integer  "blox_profile_id"
    t.integer  "cycle_id"
    t.integer  "shift_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "bloxes", ["blox_profile_id"], name: "index_bloxes_on_blox_profile_id", using: :btree
  add_index "bloxes", ["cycle_id"], name: "index_bloxes_on_cycle_id", using: :btree
  add_index "bloxes", ["functional_area_id"], name: "index_bloxes_on_functional_area_id", using: :btree
  add_index "bloxes", ["knowledge_area_id"], name: "index_bloxes_on_knowledge_area_id", using: :btree
  add_index "bloxes", ["shift_id"], name: "index_bloxes_on_shift_id", using: :btree

  create_table "cycles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "functional_areas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "knowledge_areas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bloxes", "blox_profiles"
  add_foreign_key "bloxes", "cycles"
  add_foreign_key "bloxes", "functional_areas"
  add_foreign_key "bloxes", "knowledge_areas"
  add_foreign_key "bloxes", "shifts"
end

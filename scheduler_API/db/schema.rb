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

ActiveRecord::Schema.define(version: 20150913211931) do

  create_table "buildings", force: :cascade do |t|
    t.integer  "place_id"
    t.string   "shortname"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "buildings", ["place_id"], name: "index_buildings_on_place_id"

  create_table "intervals", force: :cascade do |t|
    t.integer  "petition_id"
    t.text     "reason"
    t.datetime "from"
    t.datetime "to"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "intervals", ["petition_id"], name: "index_intervals_on_petition_id"

  create_table "petitions", force: :cascade do |t|
    t.text     "reason"
    t.string   "repeats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "shortname"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "description"
    t.string   "shortname"
    t.boolean  "can_create"
    t.boolean  "can_read"
    t.boolean  "can_edit"
    t.boolean  "admin"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_types", ["user_id"], name: "index_user_types_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "iid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

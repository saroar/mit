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

ActiveRecord::Schema.define(version: 20151211124730) do

  create_table "slots", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "selected"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "working_day_id"
  end

  add_index "slots", ["working_day_id"], name: "index_slots_on_working_day_id"

  create_table "working_days", force: :cascade do |t|
    t.datetime "start_of_day"
    t.datetime "end_of_day"
    t.integer  "divider_partition_hour", default: 60
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end

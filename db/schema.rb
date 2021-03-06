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

ActiveRecord::Schema.define(version: 20160409174811) do

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.string   "hex_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "primary_mood_id"
    t.string   "image_url"
    t.boolean  "primary"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "moods", ["primary_mood_id"], name: "index_moods_on_primary_mood_id"

  create_table "scales", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "audio_url"
    t.string   "image_url"
    t.integer  "primary_mood_id"
    t.integer  "secondary_mood_id"
    t.string   "i"
    t.string   "ii"
    t.string   "iii"
    t.string   "iv"
    t.string   "v"
    t.string   "vi"
    t.string   "vii"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "tempos", force: :cascade do |t|
    t.integer  "bpm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

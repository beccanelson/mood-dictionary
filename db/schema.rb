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

  create_table "modes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "audio_url"
    t.string   "image_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "moods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "moodable_id"
    t.string   "moodable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "moods", ["moodable_type", "moodable_id"], name: "index_moods_on_moodable_type_and_moodable_id"

  create_table "photos", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "related_moods", force: :cascade do |t|
    t.integer  "mood_1_id"
    t.integer  "mood_2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "related_moods", ["mood_1_id"], name: "index_related_moods_on_mood_1_id"
  add_index "related_moods", ["mood_2_id"], name: "index_related_moods_on_mood_2_id"

  create_table "scales", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "audio_url"
    t.string   "image_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tempos", force: :cascade do |t|
    t.integer  "bpm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

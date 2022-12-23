# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_23_082830) do
  create_table "keys", force: :cascade do |t|
    t.string "key"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "table_file_id", null: false
    t.index ["table_file_id"], name: "index_keys_on_table_file_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phrases", force: :cascade do |t|
    t.string "phrase"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "key_id", null: false
    t.integer "language_id", null: false
    t.index ["key_id"], name: "index_phrases_on_key_id"
    t.index ["language_id"], name: "index_phrases_on_language_id"
  end

  create_table "table_files", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "keys", "table_files"
  add_foreign_key "phrases", "keys"
  add_foreign_key "phrases", "languages"
end

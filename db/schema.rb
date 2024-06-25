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

ActiveRecord::Schema[7.1].define(version: 2024_06_25_151924) do
  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "image_1"
    t.string "image_2"
    t.string "birthdate"
    t.string "mother"
    t.string "father"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "characters_id", null: false
    t.index ["characters_id"], name: "index_clans_on_characters_id"
  end

  create_table "villages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "characters_id", null: false
    t.index ["characters_id"], name: "index_villages_on_characters_id"
  end

  add_foreign_key "clans", "characters", column: "characters_id"
  add_foreign_key "villages", "characters", column: "characters_id"
end

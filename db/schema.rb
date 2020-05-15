# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_14_083826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "convictions", force: :cascade do |t|
    t.bigint "criminal_id", null: false
    t.bigint "crime_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crime_id"], name: "index_convictions_on_crime_id"
    t.index ["criminal_id"], name: "index_convictions_on_criminal_id"
  end

  create_table "crimes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "criminals", force: :cascade do |t|
    t.string "name"
    t.integer "sentence_days"
    t.bigint "prison_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
    t.index ["prison_id"], name: "index_criminals_on_prison_id"
  end

  create_table "prisons", force: :cascade do |t|
    t.string "name"
    t.string "banner_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "convictions", "crimes"
  add_foreign_key "convictions", "criminals"
  add_foreign_key "criminals", "prisons"
end

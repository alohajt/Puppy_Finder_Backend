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

ActiveRecord::Schema.define(version: 2020_03_25_013800) do

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "species"
    t.string "breed"
    t.boolean "gwcats"
    t.boolean "gwkids"
    t.boolean "gwdogs"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["location_id"], name: "index_animals_on_location_id"
    t.index ["user_id"], name: "index_animals_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "animal_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_id"], name: "index_favorites_on_animal_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_users_on_location_id"
  end

  add_foreign_key "animals", "locations"
  add_foreign_key "animals", "users"
  add_foreign_key "favorites", "animals"
  add_foreign_key "favorites", "users"
  add_foreign_key "users", "locations"
end

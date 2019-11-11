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

ActiveRecord::Schema.define(version: 2019_11_11_130606) do

  create_table "bank_cards", force: :cascade do |t|
    t.integer "long_card_number"
    t.integer "ccv_code"
    t.string "billing_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "expiry_month"
    t.integer "expiry_year"
    t.integer "user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "trip_id"
    t.integer "price"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string "name"
    t.string "range"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.integer "distance_from_earth"
    t.integer "gravity"
    t.string "hostility_level"
    t.integer "population"
    t.boolean "breathable_atmosphere"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rockets", force: :cascade do |t|
    t.string "nickname"
    t.integer "speed"
    t.integer "passenger_capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ship_model_name"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "origin_id"
    t.integer "rocket_id"
    t.integer "operator_id"
    t.datetime "take_off_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "bank_balance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password_digest"
  end

end

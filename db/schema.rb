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

ActiveRecord::Schema.define(version: 2019_12_03_093529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "associations", force: :cascade do |t|
    t.string "name"
    t.text "describe"
    t.date "date_of_birth"
    t.string "email"
    t.string "facebook_url"
    t.string "donation_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "distric_name"
    t.bigint "petowner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["petowner_id"], name: "index_districts_on_petowner_id"
  end

  create_table "petdistricts", force: :cascade do |t|
    t.bigint "district_id"
    t.bigint "petsitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_petdistricts_on_district_id"
    t.index ["petsitter_id"], name: "index_petdistricts_on_petsitter_id"
  end

  create_table "petowners", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.text "describe"
    t.integer "age"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_petowners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_petowners_on_reset_password_token", unique: true
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "birthday"
    t.string "type"
    t.boolean "sterilized"
    t.bigint "petowner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["petowner_id"], name: "index_pets_on_petowner_id"
  end

  create_table "petsitters", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.text "describe"
    t.integer "age"
    t.string "phone_number"
    t.string "garden_boolean"
    t.string "living_space"
    t.boolean "account_validate?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_petsitters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_petsitters_on_reset_password_token", unique: true
  end

  create_table "petsittings", force: :cascade do |t|
    t.boolean "validate_petsitter"
    t.boolean "validate_petowner"
    t.bigint "petowner_id"
    t.bigint "petsitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["petowner_id"], name: "index_petsittings_on_petowner_id"
    t.index ["petsitter_id"], name: "index_petsittings_on_petsitter_id"
  end

end
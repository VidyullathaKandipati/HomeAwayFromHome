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

ActiveRecord::Schema.define(version: 20170123054320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "service_id"
    t.datetime "appointment_time"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "user_email"
  end

  create_table "properties", force: :cascade do |t|
    t.text     "address"
    t.integer  "postcode"
    t.integer  "no_of_bedrooms"
    t.integer  "no_of_bathrooms"
    t.text     "room_type"
    t.string   "female_male"
    t.text     "smoking"
    t.text     "pets"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "name"
    t.text     "location"
    t.text     "image"
    t.integer  "rent"
    t.integer  "capacity"
    t.integer  "available_positions"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "property_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "no_of_people"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "user_email"
    t.text     "property_name"
  end

  create_table "services", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "cost"
  end

  create_table "users", force: :cascade do |t|
    t.text     "firstname"
    t.text     "lastname"
    t.text     "email"
    t.string   "contact"
    t.text     "passport_no"
    t.text     "address"
    t.integer  "postcode"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "admin"
    t.string   "password_digest"
  end

end

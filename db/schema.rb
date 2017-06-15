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

ActiveRecord::Schema.define(version: 20170615154603) do

  create_table "breeds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custodies", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "dog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_custodies_on_dog_id"
    t.index ["owner_id"], name: "index_custodies_on_owner_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "breed_id"
    t.date "dob"
    t.string "weight"
    t.integer "vet_id"
    t.boolean "in_daycare"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breed_id"], name: "index_dogs_on_breed_id"
    t.index ["vet_id"], name: "index_dogs_on_vet_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "emergency_name"
    t.string "emergency_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vets", force: :cascade do |t|
    t.string "name"
    t.string "clinic"
    t.string "phone"
    t.string "fax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(version: 2019_06_09_010237) do

  create_table "access_tokens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "token", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_access_tokens_on_user_id"
  end

  create_table "android_devices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "model"
    t.string "manufacture"
    t.string "product_name"
    t.string "reg_id"
    t.integer "user_id"
    t.boolean "logged_id"
    t.string "apps_version"
    t.string "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "payment_method"
    t.datetime "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "seat_number"
    t.integer "user_id"
    t.integer "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toggle_features", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "feature_name"
    t.boolean "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "origin"
    t.string "destination"
    t.datetime "dep_time"
    t.string "user_transport_id"
    t.integer "fare"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date"
    t.integer "transport_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "url"
    t.string "avatar_url"
    t.string "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "last_name"
    t.string "phone_number"
    t.string "city"
    t.string "district"
    t.string "village"
    t.string "address"
    t.boolean "state"
  end

  add_foreign_key "access_tokens", "users"
end

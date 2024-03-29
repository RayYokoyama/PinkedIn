# typed: strict
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

ActiveRecord::Schema.define(version: 2020_01_07_102233) do

  create_table "enterprise_accounts", force: :cascade do |t|
    t.string "name"
    t.string "hiragana"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "room_id", null: false
    t.index ["room_id"], name: "index_messages_on_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "offer_applications", force: :cascade do |t|
    t.integer "offer_id", null: false
    t.integer "user_id", null: false
    t.boolean "accepted", default: false, null: false
    t.integer "application_type", limit: 1, default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["offer_id"], name: "index_offer_applications_on_offer_id"
    t.index ["user_id"], name: "index_offer_applications_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "name"
    t.integer "fee_type", limit: 1, default: 0, null: false
    t.integer "fee"
    t.string "description"
    t.datetime "deadline"
    t.integer "enterprise_account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enterprise_account_id"], name: "index_offers_on_enterprise_account_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "hiragana"
    t.string "graduated_university"
    t.date "birth_day"
    t.string "current_career"
    t.integer "enterprise_account_id"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["enterprise_account_id"], name: "index_users_on_enterprise_account_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "messages", "rooms"
  add_foreign_key "messages", "users"
  add_foreign_key "offer_applications", "offers"
  add_foreign_key "offer_applications", "users"
  add_foreign_key "offers", "enterprise_accounts"
  add_foreign_key "users", "enterprise_accounts"
end

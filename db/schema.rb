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

ActiveRecord::Schema.define(version: 20180828150837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "event_attendances", force: :cascade do |t|
    t.bigint "guest_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "admin_user_id"
    t.boolean "status"
    t.index ["admin_user_id"], name: "index_event_attendances_on_admin_user_id"
    t.index ["event_id"], name: "index_event_attendances_on_event_id"
    t.index ["guest_id"], name: "index_event_attendances_on_guest_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "event_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "admin_user_id"
    t.index ["admin_user_id"], name: "index_events_on_admin_user_id"
  end

  create_table "expense_services", force: :cascade do |t|
    t.string "name"
    t.float "cost"
    t.datetime "paydeadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "max_cost"
    t.float "min_cost"
    t.float "mid_cost"
    t.float "max_amount"
    t.float "mid_amount"
    t.float "min_amount"
    t.float "amount"
    t.bigint "admin_user_id"
    t.index ["admin_user_id"], name: "index_expense_services_on_admin_user_id"
  end

  create_table "expense_stuffs", force: :cascade do |t|
    t.string "name"
    t.float "cost"
    t.datetime "paydeadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "max_cost"
    t.float "min_cost"
    t.float "mid_cost"
    t.float "max_amount"
    t.float "mid_amount"
    t.float "min_amount"
    t.float "amount"
    t.bigint "admin_user_id"
    t.index ["admin_user_id"], name: "index_expense_stuffs_on_admin_user_id"
  end

  create_table "guest_adresses", force: :cascade do |t|
    t.string "street"
    t.string "home_number"
    t.string "town"
    t.string "code"
    t.string "state"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "surname"
    t.bigint "admin_user_id"
    t.index ["admin_user_id"], name: "index_guests_on_admin_user_id"
    t.index ["email"], name: "index_guests_on_email", unique: true
    t.index ["reset_password_token"], name: "index_guests_on_reset_password_token", unique: true
  end

  create_table "participations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "guest_id"
    t.bigint "event_id"
    t.string "part"
    t.index ["event_id"], name: "index_participations_on_event_id"
    t.index ["guest_id"], name: "index_participations_on_guest_id"
  end

  create_table "superadmins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_superadmins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_superadmins_on_reset_password_token", unique: true
  end

  create_table "user_admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "surname"
    t.string "telephone"
    t.index ["email"], name: "index_user_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_admins_on_reset_password_token", unique: true
  end

  add_foreign_key "event_attendances", "admin_users"
  add_foreign_key "event_attendances", "events"
  add_foreign_key "event_attendances", "guests"
  add_foreign_key "events", "admin_users"
  add_foreign_key "expense_services", "admin_users"
  add_foreign_key "expense_stuffs", "admin_users"
  add_foreign_key "guests", "admin_users"
  add_foreign_key "participations", "events"
  add_foreign_key "participations", "guests"
end

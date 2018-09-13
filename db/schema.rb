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

ActiveRecord::Schema.define(version: 20180913093421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accompaning_people", force: :cascade do |t|
    t.bigint "guest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "accompaning_persons_number_id"
    t.index ["accompaning_persons_number_id"], name: "index_accompaning_people_on_accompaning_persons_number_id"
    t.index ["guest_id"], name: "index_accompaning_people_on_guest_id"
  end

  create_table "accompaning_persons_numbers", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "budgets", force: :cascade do |t|
    t.float "max"
    t.float "min"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "event_id"
    t.bigint "admin_user_id"
    t.index ["admin_user_id"], name: "index_budgets_on_admin_user_id"
    t.index ["event_id"], name: "index_budgets_on_event_id"
  end

  create_table "ea_guest_confirmations", force: :cascade do |t|
    t.bigint "guest_id"
    t.bigint "guest_confirmation_status_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_ea_guest_confirmations_on_event_id"
    t.index ["guest_confirmation_status_id"], name: "index_ea_guest_confirmations_on_guest_confirmation_status_id"
    t.index ["guest_id"], name: "index_ea_guest_confirmations_on_guest_id"
  end

  create_table "event_attendance_statuses", force: :cascade do |t|
    t.string "eastatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_attendances", force: :cascade do |t|
    t.bigint "guest_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "admin_user_id"
    t.bigint "event_attendance_status_id"
    t.index ["admin_user_id"], name: "index_event_attendances_on_admin_user_id"
    t.index ["event_attendance_status_id"], name: "index_event_attendances_on_event_attendance_status_id"
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
    t.float "max_amount"
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
    t.float "max_amount"
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

  create_table "guest_confirmation_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guest_list_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guest_lists", force: :cascade do |t|
    t.bigint "guest_id"
    t.bigint "newlywed_id"
    t.bigint "guest_list_status_id"
    t.index ["guest_id"], name: "index_guest_lists_on_guest_id"
    t.index ["guest_list_status_id"], name: "index_guest_lists_on_guest_list_status_id"
    t.index ["newlywed_id"], name: "index_guest_lists_on_newlywed_id"
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

  create_table "newlyweds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  add_foreign_key "accompaning_people", "accompaning_persons_numbers"
  add_foreign_key "accompaning_people", "guests"
  add_foreign_key "budgets", "admin_users"
  add_foreign_key "budgets", "events"
  add_foreign_key "ea_guest_confirmations", "events"
  add_foreign_key "ea_guest_confirmations", "guest_confirmation_statuses"
  add_foreign_key "ea_guest_confirmations", "guests"
  add_foreign_key "event_attendances", "admin_users"
  add_foreign_key "event_attendances", "event_attendance_statuses"
  add_foreign_key "event_attendances", "events"
  add_foreign_key "event_attendances", "guests"
  add_foreign_key "events", "admin_users"
  add_foreign_key "expense_services", "admin_users"
  add_foreign_key "expense_stuffs", "admin_users"
  add_foreign_key "guest_lists", "guest_list_statuses"
  add_foreign_key "guest_lists", "guests"
  add_foreign_key "guest_lists", "newlyweds"
  add_foreign_key "guests", "admin_users"
  add_foreign_key "participations", "events"
  add_foreign_key "participations", "guests"
end

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

ActiveRecord::Schema.define(version: 20150301043645) do

  create_table "applies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "category_id"
    t.text     "requirement"
    t.text     "site"
    t.text     "facilities"
    t.text     "address"
    t.text     "implement_time"
    t.string   "attachment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "applies", ["category_id"], name: "index_applies_on_category_id"
  add_index "applies", ["project_id"], name: "index_applies_on_project_id"
  add_index "applies", ["user_id"], name: "index_applies_on_user_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distributes", force: :cascade do |t|
    t.boolean  "is_distribute"
    t.integer  "user_id"
    t.integer  "apply_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "distributes", ["apply_id"], name: "index_distributes_on_apply_id"
  add_index "distributes", ["user_id"], name: "index_distributes_on_user_id"

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "apply_id"
    t.text     "content"
    t.text     "coach"
    t.text     "suggestion"
    t.text     "population"
    t.text     "distribute_advice"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "feedbacks", ["apply_id"], name: "index_feedbacks_on_apply_id"
  add_index "feedbacks", ["user_id"], name: "index_feedbacks_on_user_id"

  create_table "notices", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "content"
    t.string   "notificationable_type"
    t.integer  "notificationable_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.boolean  "read"
  end

  add_index "notifications", ["user_id"], name: "index_notifications_on_user_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "serial"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "projects", ["category_id"], name: "index_projects_on_category_id"

  create_table "resources", force: :cascade do |t|
    t.string   "title"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "",    null: false
    t.string   "unit",                   default: "",    null: false
    t.boolean  "is_admin",               default: false, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["name"], name: "index_users_on_name", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "verifies", force: :cascade do |t|
    t.boolean  "is_pass"
    t.integer  "apply_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "verifies", ["apply_id"], name: "index_verifies_on_apply_id"
  add_index "verifies", ["user_id"], name: "index_verifies_on_user_id"

end

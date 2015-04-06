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

ActiveRecord::Schema.define(version: 20150406134035) do

  create_table "applies", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.integer  "project_id",     limit: 4
    t.integer  "category_id",    limit: 4
    t.text     "requirement",    limit: 65535
    t.text     "site",           limit: 65535
    t.text     "facilities",     limit: 65535
    t.text     "address",        limit: 65535
    t.datetime "implement_time"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "p_serial",       limit: 255
    t.string   "address_name",   limit: 255
    t.string   "contacts",       limit: 255
    t.string   "phone",          limit: 255
  end

  add_index "applies", ["category_id"], name: "index_applies_on_category_id", using: :btree
  add_index "applies", ["p_serial"], name: "index_applies_on_p_serial", unique: true, using: :btree
  add_index "applies", ["project_id"], name: "index_applies_on_project_id", using: :btree
  add_index "applies", ["user_id"], name: "index_applies_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "distributes", force: :cascade do |t|
    t.boolean  "is_distribute", limit: 1
    t.integer  "user_id",       limit: 4
    t.integer  "apply_id",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "coaches",       limit: 255
    t.string   "phone",         limit: 255
  end

  add_index "distributes", ["apply_id"], name: "index_distributes_on_apply_id", using: :btree
  add_index "distributes", ["user_id"], name: "index_distributes_on_user_id", using: :btree

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.integer  "apply_id",          limit: 4
    t.text     "content",           limit: 65535
    t.text     "coach",             limit: 65535
    t.text     "suggestion",        limit: 65535
    t.text     "population",        limit: 65535
    t.text     "distribute_advice", limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "attachment",        limit: 255
  end

  add_index "feedbacks", ["apply_id"], name: "index_feedbacks_on_apply_id", using: :btree
  add_index "feedbacks", ["user_id"], name: "index_feedbacks_on_user_id", using: :btree

  create_table "notices", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_id",               limit: 4
    t.string   "content",               limit: 255
    t.string   "notificationable_type", limit: 255
    t.integer  "notificationable_id",   limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.boolean  "read",                  limit: 1
  end

  add_index "notifications", ["user_id"], name: "index_notifications_on_user_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "serial",      limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "description", limit: 65535
  end

  add_index "projects", ["category_id"], name: "index_projects_on_category_id", using: :btree

  create_table "questionnaires", force: :cascade do |t|
    t.text     "content",         limit: 65535
    t.string   "coaches",         limit: 255
    t.string   "population",      limit: 255
    t.string   "start_time",      limit: 255
    t.string   "situation",       limit: 255
    t.text     "other",           limit: 65535
    t.text     "coache_sitution", limit: 65535
    t.text     "coache_other",    limit: 65535
    t.integer  "distribute_id",   limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "questionnaires", ["distribute_id"], name: "index_questionnaires_on_distribute_id", using: :btree

  create_table "resources", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "attachment", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255, default: "",    null: false
    t.string   "unit",                   limit: 255, default: "",    null: false
    t.boolean  "is_admin",               limit: 1,   default: false, null: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "role_id",                limit: 4
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "verifies", force: :cascade do |t|
    t.boolean  "is_pass",    limit: 1
    t.integer  "apply_id",   limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
  end

  add_index "verifies", ["apply_id"], name: "index_verifies_on_apply_id", using: :btree
  add_index "verifies", ["user_id"], name: "index_verifies_on_user_id", using: :btree

  add_foreign_key "applies", "categories"
  add_foreign_key "applies", "projects"
  add_foreign_key "applies", "users"
  add_foreign_key "distributes", "applies"
  add_foreign_key "distributes", "users"
  add_foreign_key "feedbacks", "applies"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "notifications", "users"
  add_foreign_key "projects", "categories"
  add_foreign_key "questionnaires", "distributes"
  add_foreign_key "verifies", "applies"
  add_foreign_key "verifies", "users"
end

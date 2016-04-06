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

ActiveRecord::Schema.define(version: 20160405222437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bug_assignments", force: :cascade do |t|
    t.datetime "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bug_creations", force: :cascade do |t|
    t.datetime "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bug_resolutions", force: :cascade do |t|
    t.datetime "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bugs", force: :cascade do |t|
    t.string   "name"
    t.integer  "points"
    t.boolean  "completed"
    t.string   "url"
    t.datetime "created"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "hunt_id"
  end

  add_index "bugs", ["hunt_id"], name: "index_bugs_on_hunt_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.string   "url"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "hunt_id"
    t.integer  "user_id"
  end

  add_index "companies", ["hunt_id"], name: "index_companies_on_hunt_id", using: :btree
  add_index "companies", ["user_id"], name: "index_companies_on_user_id", using: :btree

  create_table "hunts", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.float    "percentage"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bug_id"
    t.integer  "company_id"
  end

  add_index "hunts", ["bug_id"], name: "index_hunts_on_bug_id", using: :btree
  add_index "hunts", ["company_id"], name: "index_hunts_on_company_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "score"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "company_id"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree

  add_foreign_key "bugs", "hunts"
  add_foreign_key "companies", "hunts"
  add_foreign_key "companies", "users"
  add_foreign_key "hunts", "bugs"
  add_foreign_key "hunts", "companies"
  add_foreign_key "users", "companies"
end

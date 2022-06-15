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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2022_06_15_183454) do
=======
ActiveRecord::Schema.define(version: 2022_06_15_163806) do
>>>>>>> master

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.integer "duration"
    t.datetime "assignment_done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "learning_id"
    t.bigint "user_id"
    t.index ["learning_id"], name: "index_assignments_on_learning_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learnings", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offer_learnings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "learning_id"
    t.bigint "offer_id"
    t.index ["learning_id"], name: "index_offer_learnings_on_learning_id"
    t.index ["offer_id"], name: "index_offer_learnings_on_offer_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "purchases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "offer_id"
    t.bigint "company_id"
    t.index ["company_id"], name: "index_purchases_on_company_id"
    t.index ["offer_id"], name: "index_purchases_on_offer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id"
    t.integer "status", default: 0
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assignments", "learnings"
  add_foreign_key "assignments", "users"
  add_foreign_key "offer_learnings", "learnings"
  add_foreign_key "offer_learnings", "offers"
  add_foreign_key "purchases", "companies"
  add_foreign_key "purchases", "offers"
  add_foreign_key "users", "companies"
end

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

ActiveRecord::Schema.define(version: 20160716034335) do

  create_table "expense_items", force: :cascade do |t|
    t.date     "date"
    t.integer  "amount"
    t.text     "description"
    t.integer  "expense_source_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["expense_source_id"], name: "index_expense_items_on_expense_source_id"
  end

  create_table "expense_sources", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_expense_sources_on_name", unique: true
  end

  create_table "income_items", force: :cascade do |t|
    t.date     "date"
    t.integer  "amount"
    t.text     "description"
    t.integer  "income_source_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["income_source_id"], name: "index_income_items_on_income_source_id"
  end

  create_table "income_sources", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_income_sources_on_name", unique: true
  end

  create_table "settings", force: :cascade do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_settings_on_name", unique: true
  end

  create_table "shortcuts", force: :cascade do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_shortcuts_on_name", unique: true
  end

end

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

ActiveRecord::Schema.define(version: 20190328150525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "address_2"
    t.string   "phone"
    t.string   "email"
    t.integer  "lead_count"
    t.string   "zip"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "lead_id"
    t.index ["lead_id"], name: "index_companies_on_lead_id", using: :btree
  end

  create_table "companies_leads", id: false, force: :cascade do |t|
    t.integer "lead_id",    null: false
    t.integer "company_id", null: false
    t.index ["company_id"], name: "index_companies_leads_on_company_id", using: :btree
    t.index ["lead_id"], name: "index_companies_leads_on_lead_id", using: :btree
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "address_2"
    t.string   "phone"
    t.string   "email"
    t.string   "zip"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "company_id"
    t.index ["company_id"], name: "index_contacts_on_company_id", using: :btree
  end

  create_table "leads", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "web_referral"
    t.string   "location"
    t.string   "home_type"
    t.string   "home_id"
    t.integer  "provider_id"
    t.integer  "company_id"
    t.string   "form_version"
    t.index ["company_id"], name: "index_leads_on_company_id", using: :btree
    t.index ["provider_id"], name: "index_leads_on_provider_id", using: :btree
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "county"
    t.integer  "bed_count"
    t.integer  "occupied_beds"
    t.boolean  "medicare"
    t.boolean  "medicaid"
    t.string   "provider_number"
    t.integer  "overall_rating"
    t.string   "holding_company"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "home_type"
    t.string   "home_inspection_rating"
    t.text     "description"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "leads", "companies"
  add_foreign_key "leads", "providers"
end

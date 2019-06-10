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

ActiveRecord::Schema.define(version: 2019_05_27_202905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "isin"
    t.string "cusip"
    t.string "name"
    t.string "country"
    t.string "sector"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cusip"], name: "index_companies_on_cusip"
    t.index ["isin"], name: "index_companies_on_isin"
    t.index ["name"], name: "index_companies_on_name"
  end

  create_table "company_monthly_data", force: :cascade do |t|
    t.bigint "company_id"
    t.date "month"
    t.float "return"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_monthly_data_on_company_id"
  end

  create_table "company_yearly_data", force: :cascade do |t|
    t.bigint "company_id"
    t.date "year"
    t.float "return_after_carbon_beta"
    t.float "se_return_after_carbon_beta"
    t.float "carbon_beta"
    t.float "se_carbon_beta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_yearly_data_on_company_id"
  end

  add_foreign_key "company_monthly_data", "companies"
  add_foreign_key "company_yearly_data", "companies"
end

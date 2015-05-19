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

ActiveRecord::Schema.define(version: 20150519072307) do

  create_table "active_reports", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.text     "content",            limit: 65535
    t.text     "comment",            limit: 65535
    t.date     "publish_start_date"
    t.date     "publish_end_date"
    t.integer  "category_id",        limit: 4
    t.integer  "client_id",          limit: 4
    t.integer  "client_user_id",     limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password",        limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "client_users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password",        limit: 255
    t.string   "password_digest", limit: 255
    t.integer  "client_id",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "address",            limit: 255
    t.string   "tel_number",         limit: 255
    t.string   "email",              limit: 255
    t.string   "client_president",   limit: 255
    t.string   "client_manager",     limit: 255
    t.integer  "contract_status_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "contract_statuses", force: :cascade do |t|
    t.string "contract_status", limit: 255
  end

  create_table "donation_pay_methods", force: :cascade do |t|
    t.string   "donation_pay_method", limit: 255
    t.integer  "client_id",           limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "donation_purposes", force: :cascade do |t|
    t.string   "donation_purpose", limit: 255
    t.integer  "client_id",        limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "donations", force: :cascade do |t|
    t.integer "price_per_employee", limit: 4
    t.integer "client_user_id",     limit: 4
    t.integer "client_id",          limit: 4
    t.text    "donation_message",   limit: 65535
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "age",             limit: 4
    t.string   "client_position", limit: 255
    t.integer  "client_id",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "from_client_messages", force: :cascade do |t|
    t.text     "contact_message", limit: 65535
    t.integer  "client_user_id",  limit: 4
    t.integer  "client_id",       limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "images", force: :cascade do |t|
    t.binary   "image",            limit: 65535
    t.integer  "active_report_id", limit: 4
    t.integer  "client_id",        limit: 4
    t.integer  "support_voice_id", limit: 4
    t.integer  "donation_id",      limit: 4
    t.integer  "client_user_id",   limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "sex",         limit: 255
    t.integer  "employee_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "supporter_voices", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "content",            limit: 255
    t.date     "publish_start_date"
    t.date     "publish_end_date"
    t.integer  "client_id",          limit: 4
    t.integer  "client_user_id",     limit: 4
    t.integer  "category_id",        limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end

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

ActiveRecord::Schema.define(version: 20151003012753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "highlights"
    t.string   "size"
    t.string   "size_type"
    t.integer  "price"
    t.float    "price_psf"
    t.boolean  "dnd_price"
    t.float    "cap_rate"
    t.integer  "occupancy"
    t.string   "year_built"
    t.date     "offer_date"
    t.string   "title"
    t.string   "visibility"
    t.boolean  "ended"
    t.string   "address"
    t.string   "address_2"
    t.string   "state"
    t.string   "city"
    t.string   "zip"
    t.string   "website"
    t.string   "country"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assets", ["user_id"], name: "index_assets_on_user_id", using: :btree

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "finished_mails", force: true do |t|
    t.integer  "mail_campaign_id"
    t.string   "from"
    t.string   "to"
    t.string   "subject"
    t.text     "body_html"
    t.integer  "retries"
    t.datetime "last_retry_at"
    t.string   "last_error"
    t.datetime "sent_at"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body_text"
    t.boolean  "opened",           default: false, null: false
    t.string   "key"
  end

  add_index "finished_mails", ["key"], name: "index_finished_mails_on_key", unique: true, using: :btree
  add_index "finished_mails", ["mail_campaign_id", "status"], name: "index_finished_mails_on_mail_campain_id_and_status", using: :btree
  add_index "finished_mails", ["to", "mail_campaign_id"], name: "index_finished_mails_on_to_and_mail_campaign_id", using: :btree

  create_table "mail_attachments", force: true do |t|
    t.string   "filename",                      null: false
    t.string   "path",             limit: 2048
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mail_template_id"
  end

  add_index "mail_attachments", ["mail_template_id"], name: "index_mail_attachments_on_mail_template_id", using: :btree

  create_table "mail_campaigns", force: true do |t|
    t.integer  "mailing_list_id"
    t.integer  "unsubscribe_methods"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sent_mails_count",    default: 0, null: false
    t.integer  "opened_mails_count",  default: 0, null: false
  end

  add_index "mail_campaigns", ["mailing_list_id"], name: "index_mail_campaigns_on_mailing_list_id", using: :btree

  create_table "mail_keys", force: true do |t|
    t.string   "email"
    t.string   "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mail_keys", ["email"], name: "index_mail_keys_on_email", unique: true, using: :btree
  add_index "mail_keys", ["key"], name: "index_mail_keys_on_key", unique: true, using: :btree

  create_table "mail_templates", force: true do |t|
    t.integer  "mail_campaign_id"
    t.integer  "queued_mail_id"
    t.string   "from"
    t.string   "subject"
    t.text     "body_html"
    t.text     "body_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reply_to"
  end

  add_index "mail_templates", ["mail_campaign_id"], name: "index_mail_templates_on_mail_campaign_id", using: :btree
  add_index "mail_templates", ["queued_mail_id"], name: "index_mail_templates_on_queued_mail_id", using: :btree

  create_table "mailing_lists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "queued_mails", force: true do |t|
    t.integer  "mail_campaign_id"
    t.string   "to"
    t.integer  "retries",            default: 0,     null: false
    t.datetime "last_retry_at"
    t.string   "last_error"
    t.boolean  "locked",             default: false, null: false
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "key"
    t.boolean  "require_uniqueness", default: true
  end

  add_index "queued_mails", ["locked", "locked_at"], name: "index_queued_mails_on_locked_and_locked_at", using: :btree
  add_index "queued_mails", ["locked", "retries", "id"], name: "index_queued_mails_on_locked_retries_and_id", using: :btree
  add_index "queued_mails", ["mail_campaign_id", "to", "require_uniqueness"], name: "index_queued_mails_uniqueness_for_to", unique: true, using: :btree
  add_index "queued_mails", ["retries", "locked"], name: "index_queued_mails_on_retries_and_locked", using: :btree

  create_table "sender_addresses", force: true do |t|
    t.string   "email"
    t.boolean  "verified"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "smailer_properties", force: true do |t|
    t.string   "name"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "notes"
  end

  add_index "smailer_properties", ["name"], name: "index_smailer_properties_on_name", unique: true, using: :btree

  create_table "subscriptions", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.boolean  "subscribed"
    t.boolean  "confirmed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image_url"
    t.string   "address"
    t.string   "industry_role"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.boolean  "approved"
    t.string   "responsibilities"
    t.string   "title"
    t.string   "website"
    t.text     "company"
    t.string   "country"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

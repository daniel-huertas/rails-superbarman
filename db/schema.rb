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
ActiveRecord::Schema.define(version: 20170427100018) do
=======
ActiveRecord::Schema.define(version: 20170427123114) do
>>>>>>> 80cce964b315cf3944c7b5b582de22809657a54a

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bartenders", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "email"
    t.text     "bio"
    t.integer  "rating"
    t.string   "location"
    t.string   "language_1"
    t.string   "language_2"
    t.string   "language_3"
    t.string   "language_4"
    t.string   "language_5"
    t.string   "speciality_1"
    t.string   "speciality_2"
    t.string   "speciality_3"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "title"
  end


  create_table "reviews", force: :cascade do |t|
    t.string   "content"
    t.integer  "rating"
    t.integer  "bartender_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["bartender_id"], name: "index_reviews_on_bartender_id", using: :btree

  create_table "parties", force: :cascade do |t|
    t.string   "address"
    t.string   "date"
    t.integer  "user_id"
    t.integer  "bartender_id"
    t.string   "theme"
    t.integer  "size"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["bartender_id"], name: "index_parties_on_bartender_id", using: :btree
    t.index ["user_id"], name: "index_parties_on_user_id", using: :btree

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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end


  add_foreign_key "reviews", "bartenders"

  add_foreign_key "parties", "bartenders"
  add_foreign_key "parties", "users"

end

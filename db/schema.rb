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

ActiveRecord::Schema.define(version: 20140507115129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorizations", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
  end

  add_index "authorizations", ["student_id"], name: "index_authorizations_on_student_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cohorts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "month"
    t.string   "year"
    t.boolean  "selected",   default: false
  end

  create_table "requests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "student_id"
    t.boolean  "solved",      default: false
    t.datetime "solved_at"
    t.integer  "category_id"
    t.integer  "teacher_id"
  end

  add_index "requests", ["category_id"], name: "index_requests_on_category_id", using: :btree
  add_index "requests", ["student_id"], name: "index_requests_on_student_id", using: :btree
  add_index "requests", ["teacher_id"], name: "index_requests_on_teacher_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cohort_id"
    t.boolean  "approved",   default: false
  end

  add_index "students", ["cohort_id"], name: "index_students_on_cohort_id", using: :btree

  create_table "teachers", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cohort"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "teachers", ["confirmation_token"], name: "index_teachers_on_confirmation_token", unique: true, using: :btree
  add_index "teachers", ["email"], name: "index_teachers_on_email", unique: true, using: :btree
  add_index "teachers", ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true, using: :btree

end

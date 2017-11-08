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

ActiveRecord::Schema.define(version: 20171108073048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "admin_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_causes", force: :cascade do |t|
    t.string "project_title"
    t.string "project_description"
    t.bigint "donation_goal"
    t.integer "project_status", default: 0
    t.integer "pto_id"
    t.integer "admin_id"
    t.integer "fsp_id"
    t.string "country"
    t.string "state_or_province"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_project_causes_on_admin_id"
    t.index ["fsp_id"], name: "index_project_causes_on_fsp_id"
    t.index ["pto_id"], name: "index_project_causes_on_pto_id"
  end

  create_table "pto_tasks", force: :cascade do |t|
    t.integer "project_id"
    t.string "task_title"
    t.string "task_description"
    t.integer "task_owner_approval_status", default: 0
    t.integer "task_admin_approval_status", default: 0
    t.integer "task_owner_id"
    t.integer "admin_owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_owner_id"], name: "index_pto_tasks_on_admin_owner_id"
    t.index ["project_id"], name: "index_pto_tasks_on_project_id"
    t.index ["task_owner_id"], name: "index_pto_tasks_on_task_owner_id"
  end

  create_table "pto_users", force: :cascade do |t|
    t.string "email"
    t.integer "approved_by"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["approved_by"], name: "index_pto_users_on_approved_by"
    t.index ["user_id"], name: "index_pto_users_on_user_id"
  end

  create_table "user_votes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cause_id"
    t.bigint "donation_amount", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cause_id"], name: "index_user_votes_on_cause_id"
    t.index ["user_id"], name: "index_user_votes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "address"
    t.integer "gender", default: 3
    t.date "date_of_birth"
    t.integer "pto_role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

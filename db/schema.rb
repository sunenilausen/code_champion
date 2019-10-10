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

ActiveRecord::Schema.define(version: 2019_10_10_225438) do

  create_table "eval_servers", force: :cascade do |t|
    t.string "ip_address"
    t.string "port"
    t.integer "language", default: 0
    t.integer "status", default: 0
    t.integer "response_time"
    t.datetime "last_response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "ssl", default: true
  end

  create_table "problems", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "tournament_id"
    t.index ["tournament_id"], name: "index_problems_on_tournament_id"
  end

  create_table "solutions", force: :cascade do |t|
    t.integer "problem_id"
    t.integer "user_id"
    t.text "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "language", default: 0
    t.index ["problem_id"], name: "index_solutions_on_problem_id"
    t.index ["user_id"], name: "index_solutions_on_user_id"
  end

  create_table "test_case_solutions", force: :cascade do |t|
    t.integer "solution_id"
    t.integer "test_case_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "output"
    t.text "log"
    t.index ["solution_id"], name: "index_test_case_solutions_on_solution_id"
    t.index ["test_case_id"], name: "index_test_case_solutions_on_test_case_id"
  end

  create_table "test_cases", force: :cascade do |t|
    t.integer "problem_id"
    t.json "input"
    t.json "output"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["problem_id"], name: "index_test_cases_on_problem_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

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

ActiveRecord::Schema.define(version: 20181030090208) do

  create_table "problems", force: :cascade do |t|
    t.integer "problem_id"
    t.text "problem_statement"
    t.text "flag"
    t.text "supp_file"
    t.integer "upvote_downvote"
    t.integer "max_points"
    t.integer "successful_submissions"
    t.integer "total_submissions"
    t.boolean "dirty_bit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "Question_ID"
    t.string "Problem_Name"
    t.string "Max_Points"
    t.string "Submissions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "email_confirmed"
    t.string "confirm_token"
    t.string "remember_digest"
  end

end

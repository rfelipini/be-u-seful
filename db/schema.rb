# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_01_191801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.string "description"
    t.string "started_at"
    t.string "finalized_at"
    t.string "title"
    t.string "company"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_courses_on_student_id"
  end

  create_table "fields_of_interests", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.string "interest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_fields_of_interests_on_student_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "language"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "student_id", null: false
    t.index ["student_id"], name: "index_languages_on_student_id"
  end

  create_table "portfolio_types", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.string "image_card"
    t.string "url"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_portfolio_types_on_student_id"
  end

  create_table "professional_experiences", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.string "description"
    t.string "started_at"
    t.string "finalized_at"
    t.string "ocupation"
    t.string "company"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_professional_experiences_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "full_name"
    t.integer "age"
    t.string "nationality"
    t.string "city_at"
    t.string "city_to"
    t.integer "phone_number"
    t.string "link_to_github"
    t.string "link_to_linkedin"
    t.string "passport"
    t.string "remoto_work"
    t.string "work_abroad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "url"
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_videos_on_student_id"
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "full_name"
    t.string "github"
    t.string "background"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_volunteers_on_user_id"
  end

  add_foreign_key "courses", "students"
  add_foreign_key "fields_of_interests", "students"
  add_foreign_key "languages", "students"
  add_foreign_key "portfolio_types", "students"
  add_foreign_key "professional_experiences", "students"
  add_foreign_key "students", "users"
  add_foreign_key "videos", "students"
  add_foreign_key "volunteers", "users"
end

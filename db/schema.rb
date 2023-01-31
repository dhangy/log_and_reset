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

ActiveRecord::Schema[7.0].define(version: 2023_01_31_184023) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beverages", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.integer "water_in_oz"
    t.integer "cups_of_coffee"
    t.integer "cups_of_tea"
    t.integer "alcoholic_drinks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cycles", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.integer "cycle_status", default: 0
    t.integer "pain_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.integer "minutes_of_exercise"
    t.integer "exercise_intensity"
    t.integer "exercise_type", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.integer "calories"
    t.boolean "processed_food"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.integer "hours_of_tv"
    t.integer "hours_on_phone"
    t.integer "hours_of_social_media"
    t.integer "hours_of_video_games"
    t.boolean "listened_to_music"
    t.boolean "read_book"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mental_healths", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.string "morning_mood"
    t.string "afternoon_mood"
    t.string "evening_mood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pain_levels", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.integer "pain_level"
    t.integer "pain_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.boolean "meaningful_time"
    t.boolean "interpersonal_conflict"
    t.boolean "interpersonal_support"
    t.boolean "interpersonal_empathy"
    t.boolean "time_with_friends"
    t.boolean "time_with_family"
    t.boolean "time_with_significant_other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sleeps", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.integer "hours_slept"
    t.boolean "restless_sleep"
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
    t.boolean "beverage_feature", default: false
    t.boolean "food_feature", default: false
    t.boolean "mental_health_feature", default: false
    t.boolean "sleep_feature", default: false
    t.boolean "relationship_feature", default: false
    t.boolean "exercise_feature", default: false
    t.boolean "cycle_feature", default: false
    t.boolean "pain_level_feature", default: false
    t.boolean "media_feature", default: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

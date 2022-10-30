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

ActiveRecord::Schema[7.0].define(version: 2022_10_22_085503) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "match_schedules", force: :cascade do |t|
    t.datetime "match_date"
    t.string "group"
    t.integer "a_team"
    t.integer "b_team"
    t.integer "venue_id"
    t.string "time_gmt"
    t.string "time_ist"
    t.string "time_local"
    t.integer "total_predictions", default: 0
    t.integer "team_a_win_predictions"
    t.integer "team_b_win_predictions"
    t.integer "draw_predictions"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_match_schedules_on_venue_id"
  end

  create_table "predictions", force: :cascade do |t|
    t.integer "match_schedule_id"
    t.integer "team_id"
    t.integer "user_id"
    t.integer "prediction", default: 0
    t.integer "stakes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_schedule_id"], name: "index_predictions_on_match_schedule_id"
    t.index ["team_id"], name: "index_predictions_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "matches"
    t.integer "points"
    t.integer "ranking"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

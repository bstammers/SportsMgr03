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

ActiveRecord::Schema.define(version: 20140729064538) do

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.string   "manager"
    t.string   "manager_phone"
    t.string   "manager_email"
    t.string   "location"
    t.boolean  "points_flag"
    t.boolean  "sets_flag"
    t.boolean  "mvp_flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "divisions", force: true do |t|
    t.string   "name"
    t.integer  "competition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "divisions", ["competition_id"], name: "index_divisions_on_competition_id"

  create_table "draws", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "draws", ["division_id"], name: "index_draws_on_division_id"

  create_table "match_sets", force: true do |t|
    t.integer  "team1_points"
    t.integer  "team2_points"
    t.string   "winner"
    t.integer  "match_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "match_sets", ["match_id"], name: "index_match_sets_on_match_id"

  create_table "matches", force: true do |t|
    t.string   "team1"
    t.string   "team2"
    t.string   "court"
    t.time     "match_time"
    t.integer  "team1_points"
    t.integer  "team2_points"
    t.integer  "team1_sets"
    t.integer  "team2_sets"
    t.string   "mvp"
    t.decimal  "team1_fees"
    t.decimal  "team2_fees"
    t.integer  "round_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["round_id"], name: "index_matches_on_round_id"

  create_table "players", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.string   "avatar"
    t.boolean  "admin_flag"
    t.boolean  "manager_flag"
    t.integer  "team_id"
    t.integer  "competition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["competition_id"], name: "index_players_on_competition_id"
  add_index "players", ["team_id"], name: "index_players_on_team_id"

  create_table "rounds", force: true do |t|
    t.integer  "round_no"
    t.date     "round_date"
    t.integer  "draw_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rounds", ["draw_id"], name: "index_rounds_on_draw_id"

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "captain"
    t.string   "secondary_contact"
    t.integer  "games_played"
    t.integer  "games_won"
    t.integer  "games_lost"
    t.integer  "games_drawn"
    t.integer  "sets_won"
    t.integer  "sets_lost"
    t.integer  "sets_tied"
    t.integer  "points_for"
    t.integer  "point_against"
    t.decimal  "points_percent"
    t.integer  "sets_for"
    t.integer  "sets_against"
    t.decimal  "sets_percent"
    t.integer  "competition_points"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["division_id"], name: "index_teams_on_division_id"

end

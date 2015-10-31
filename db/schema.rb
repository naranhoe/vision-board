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

ActiveRecord::Schema.define(version: 20151031152604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "planningboards", force: :cascade do |t|
    t.string   "goal1"
    t.string   "goal2"
    t.string   "goal3"
    t.string   "goal4"
    t.string   "goal5"
    t.string   "url1"
    t.string   "url2"
    t.string   "url3"
    t.string   "url4"
    t.string   "url5"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "description1"
    t.text     "description2"
    t.text     "description3"
    t.text     "description4"
    t.text     "description5"
  end

end
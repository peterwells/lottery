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

ActiveRecord::Schema.define(version: 20170609130815) do

  create_table "weekly_results", force: :cascade do |t|
    t.date "drawing_date"
    t.decimal "number1"
    t.decimal "number2"
    t.decimal "number3"
    t.decimal "number4"
    t.decimal "number5"
    t.decimal "powerball"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

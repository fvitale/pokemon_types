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

ActiveRecord::Schema.define(version: 20170702213943) do

  create_table "types", force: :cascade do |t|
    t.string  "attack"
    t.decimal "normal",   precision: 3, scale: 2
    t.decimal "fire",     precision: 3, scale: 2
    t.decimal "water",    precision: 3, scale: 2
    t.decimal "electric", precision: 3, scale: 2
    t.decimal "grass",    precision: 3, scale: 2
    t.decimal "ice",      precision: 3, scale: 2
    t.decimal "fighting", precision: 3, scale: 2
    t.decimal "poison",   precision: 3, scale: 2
    t.decimal "ground",   precision: 3, scale: 2
    t.decimal "flying",   precision: 3, scale: 2
    t.decimal "psychic",  precision: 3, scale: 2
    t.decimal "bug",      precision: 3, scale: 2
    t.decimal "rock",     precision: 3, scale: 2
    t.decimal "ghost",    precision: 3, scale: 2
    t.decimal "dragon",   precision: 3, scale: 2
    t.decimal "dark",     precision: 3, scale: 2
    t.decimal "steel",    precision: 3, scale: 2
    t.decimal "fairy",    precision: 3, scale: 2
  end

end

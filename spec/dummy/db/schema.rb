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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120306080047) do

  create_table "japanese_cities", :primary_key => "code", :force => true do |t|
    t.string "prefecture_code", :limit => 6,  :null => false
    t.string "name",            :limit => 21
  end

  add_index "japanese_cities", ["code"], :name => "sqlite_autoindex_japanese_cities_1", :unique => true
  add_index "japanese_cities", ["prefecture_code", "name"], :name => "sqlite_autoindex_japanese_cities_2", :unique => true

  create_table "japanese_prefectures", :primary_key => "code", :force => true do |t|
    t.string "name", :limit => 12
  end

  add_index "japanese_prefectures", ["code"], :name => "sqlite_autoindex_japanese_prefectures_1", :unique => true
  add_index "japanese_prefectures", ["name"], :name => "sqlite_autoindex_japanese_prefectures_2", :unique => true

end

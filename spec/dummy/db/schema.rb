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

ActiveRecord::Schema.define(:version => 20120308032336) do

  create_table "japanese_local_goverments", :primary_key => "code", :force => true do |t|
    t.string "type",       :limit => 40, :null => false
    t.string "prefecture", :limit => 12, :null => false
    t.string "city",       :limit => 21
    t.string "ward",       :limit => 21
  end

  add_index "japanese_local_goverments", ["code"], :name => "sqlite_autoindex_japanese_local_goverments_1", :unique => true
  add_index "japanese_local_goverments", ["prefecture", "city", "ward"], :name => "sqlite_autoindex_japanese_local_goverments_2", :unique => true

end

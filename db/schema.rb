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

ActiveRecord::Schema.define(:version => 20130118162029) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

# Could not dump table "admin_users" because of following StandardError
#   Unknown type 'bool' for column 'superadmin'

  create_table "bunnies", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nhls", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nhltests", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projs", :force => true do |t|
    t.integer  "rank"
    t.string   "player"
    t.string   "team"
    t.string   "pos"
    t.integer  "gp"
    t.integer  "g"
    t.integer  "a"
    t.integer  "pts"
    t.integer  "plus_minus"
    t.integer  "pim"
    t.integer  "ppp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user3"
    t.decimal  "user1"
  end

  create_table "stats", :force => true do |t|
    t.string   "player"
    t.string   "position"
    t.integer  "a"
    t.decimal  "a_g"
    t.integer  "bks"
    t.integer  "eng"
    t.integer  "es_toi"
    t.integer  "es_toi_g"
    t.integer  "esa"
    t.integer  "esfol"
    t.integer  "esfow"
    t.integer  "esg"
    t.integer  "esp"
    t.integer  "first_g"
    t.decimal  "fo_perc"
    t.integer  "fo_total"
    t.integer  "fol"
    t.integer  "fow"
    t.integer  "g"
    t.decimal  "g_g"
    t.integer  "g_misc"
    t.integer  "gp"
    t.integer  "gva"
    t.integer  "gwg"
    t.integer  "hits"
    t.integer  "major"
    t.integer  "match_pen"
    t.integer  "minor"
    t.integer  "misc"
    t.integer  "mss"
    t.integer  "otg"
    t.integer  "p"
    t.decimal  "p_g"
    t.integer  "pim"
    t.integer  "plus_minus"
    t.integer  "pp_toi"
    t.integer  "pp_toi_g"
    t.integer  "ppa"
    t.integer  "ppfol"
    t.integer  "ppfow"
    t.integer  "ppg"
    t.integer  "ppp"
    t.integer  "ps"
    t.integer  "s_g"
    t.decimal  "sft_g"
    t.integer  "sh_toi"
    t.integer  "sh_toi_g"
    t.integer  "sha"
    t.integer  "shfol"
    t.integer  "shfow"
    t.integer  "shg"
    t.integer  "shifts"
    t.decimal  "shot_perc"
    t.integer  "shots"
    t.integer  "shp"
    t.integer  "tka"
    t.integer  "toi"
    t.integer  "toi_g"
    t.integer  "toi_s"
    t.integer  "total_so_g"
    t.integer  "total_so_gdg"
    t.integer  "total_so_s"
    t.integer  "gs"
    t.integer  "w"
    t.integer  "l"
    t.integer  "ot"
    t.integer  "sa"
    t.integer  "ga"
    t.decimal  "gaa"
    t.integer  "sv"
    t.decimal  "sv_perc"
    t.integer  "so"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "user1"
    t.decimal  "user2"
    t.integer  "user3",        :default => 0
  end

end

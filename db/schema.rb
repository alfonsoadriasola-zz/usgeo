# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100526200156) do

  create_table "data_points", :force => true do |t|
    t.integer "geonameid"
    t.string  "name"
    t.string  "asciiname"
    t.string  "alternatenames"
    t.float   "latitude"
    t.float   "longitude"
    t.string  "feature_class"
    t.string  "feature_code"
    t.string  "country_code"
    t.string  "cc2"
    t.string  "admin1_code"
    t.string  "admin2_code"
    t.string  "admin3_code"
    t.string  "admin4_code"
    t.integer "population"
    t.float   "elevation"
    t.integer "gtopo30"
    t.string  "timezone"
    t.date    "modification_date"
  end

end

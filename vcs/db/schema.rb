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

ActiveRecord::Schema.define(:version => 20140920122214) do

  create_table "crop_pricings", :force => true do |t|
    t.integer  "location_id"
    t.integer  "wholeseller_id"
    t.float    "price"
    t.integer  "crop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crops", :force => true do |t|
    t.string   "name"
    t.float    "govt_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "farmers", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "addr_line_1"
    t.string   "street"
    t.string   "district"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "orders", :force => true do |t|
    t.integer  "crop_id"
    t.integer  "farmer_id"
    t.integer  "wholeseller_id"
    t.string   "status"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wholesellers", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.float    "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

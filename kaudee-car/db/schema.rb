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

ActiveRecord::Schema.define(version: 20160411114256) do

  create_table "carbrands", force: true do |t|
    t.string   "brandname"
    t.integer  "brand_option"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "carmodels", force: true do |t|
    t.string   "modelname"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: true do |t|
    t.string   "carsname"
    t.string   "carsname_lao"
    t.string   "city"
    t.string   "distinct"
    t.integer  "user_id"
    t.string   "address"
    t.string   "address_lao"
    t.string   "cellphone"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "delyn"
    t.string   "detail_lao"
    t.string   "detail_eng"
    t.string   "brand"
    t.string   "model"
    t.string   "newold"
    t.integer  "price"
    t.string   "price_unit"
    t.string   "year"
    t.string   "odometer"
    t.string   "transmission"
    t.string   "fueltype"
    t.string   "drivetype"
    t.string   "color"
    t.string   "bodytype"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
  end

  create_table "categories", force: true do |t|
    t.string   "categorylao"
    t.string   "categoryname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "cityname"
    t.string   "city_lao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", force: true do |t|
    t.string   "districtname"
    t.string   "district_lao"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorites", force: true do |t|
    t.integer  "user_id"
    t.integer  "data_id"
    t.integer  "gubun"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.integer  "data_id"
    t.string   "img"
    t.integer  "gubun"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "markets", force: true do |t|
    t.string   "marketname"
    t.string   "marketname_lao"
    t.integer  "user_id"
    t.string   "category1"
    t.string   "category2"
    t.string   "city"
    t.string   "district"
    t.string   "address"
    t.string   "address_lao"
    t.string   "open1"
    t.string   "close1"
    t.string   "desc1"
    t.string   "open2"
    t.string   "close2"
    t.string   "desc2"
    t.string   "open3"
    t.string   "close3"
    t.string   "desc3"
    t.string   "fax"
    t.string   "cellphone"
    t.string   "tel"
    t.string   "email"
    t.string   "homepage"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "delyn"
    t.string   "detail_lao"
    t.string   "detail_eng"
    t.string   "keyword"
    t.string   "keyword_lao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "tel2"
    t.string   "enable"
  end

  create_table "rooms", force: true do |t|
    t.string   "roomname"
    t.string   "roomname_lao"
    t.integer  "user_id"
    t.string   "address"
    t.string   "address_lao"
    t.string   "cellphone"
    t.string   "tel"
    t.string   "email"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "delyn"
    t.string   "detail_lao"
    t.string   "detail_eng"
    t.string   "status"
    t.string   "product"
    t.integer  "price"
    t.string   "price_unit"
    t.string   "land_size"
    t.string   "rooms"
    t.string   "toilets"
    t.string   "built_year"
    t.string   "amenities"
    t.string   "parking"
    t.string   "rent_option"
    t.string   "city"
    t.string   "district"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.string   "sex"
    t.string   "tel"
    t.string   "usertype"
    t.string   "birthdate"
    t.string   "marketname"
    t.string   "cellphone"
    t.string   "marketphone"
    t.string   "marketemail"
    t.string   "address"
    t.string   "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string   "empno"
    t.string   "recomno"
  end

end

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

ActiveRecord::Schema.define(version: 20150424110954) do

  create_table "dish_rating_comments", force: true do |t|
    t.text     "content",        null: false
    t.integer  "user_id",        null: false
    t.integer  "dish_rating_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dish_ratings", force: true do |t|
    t.decimal  "rate_value", null: false
    t.integer  "user_id",    null: false
    t.integer  "dish_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id"
    t.text     "content"
  end

  add_index "dish_ratings", ["post_id"], name: "index_dish_ratings_on_post_id"

  create_table "dishes", force: true do |t|
    t.string   "name",          null: false
    t.text     "description",   null: false
    t.string   "category",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
  end

  create_table "images", force: true do |t|
    t.string   "name",           null: false
    t.text     "description"
    t.string   "location_path"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "imageable_id"
    t.string   "imageable_type"
  end

  add_index "images", ["imageable_id", "imageable_type"], name: "index_images_on_imageable_id_and_imageable_type"
  add_index "images", ["imageable_id"], name: "index_images_on_imageable_id"

  create_table "menus", force: true do |t|
    t.boolean  "is_active",     null: false
    t.integer  "restaurant_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_comments", force: true do |t|
    t.text     "content",    null: false
    t.integer  "user_id",    null: false
    t.integer  "post_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title",      null: false
    t.text     "content",    null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dish_id"
  end

  create_table "restaurant_rating_comments", force: true do |t|
    t.text     "content",              null: false
    t.integer  "user_id",              null: false
    t.integer  "restaurant_rating_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurant_ratings", force: true do |t|
    t.decimal  "rate_value",    null: false
    t.integer  "user_id",       null: false
    t.integer  "restaurant_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.text     "address",     null: false
    t.string   "location",    null: false
    t.decimal  "gps_lat",     null: false
    t.decimal  "gps_lon",     null: false
    t.string   "category",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",  null: false
    t.string   "last_name",   null: false
    t.string   "hashed_pass"
    t.string   "email",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

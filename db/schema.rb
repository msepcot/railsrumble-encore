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

ActiveRecord::Schema.define(version: 20131020183907) do

  create_table "bands", force: true do |t|
    t.string   "name"
    t.string   "twitter"
    t.string   "web"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "media", force: true do |t|
    t.integer  "source_id"
    t.string   "source_type"
    t.string   "title"
    t.string   "link"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "media", ["source_id", "source_type"], name: "index_media_on_source_id_and_source_type"

  create_table "reviews", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "rating"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "venue"
    t.date     "played_at"
    t.integer  "band_id"
    t.integer  "ticket_id"
  end

  add_index "reviews", ["band_id"], name: "index_reviews_on_band_id"
  add_index "reviews", ["ticket_id"], name: "index_reviews_on_ticket_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "tickets", force: true do |t|
    t.integer  "user_id"
    t.integer  "review_id"
    t.string   "event_code"
    t.string   "section"
    t.string   "row"
    t.string   "seat"
    t.string   "stub_file_name"
    t.string   "stub_content_type"
    t.integer  "stub_file_size"
    t.datetime "stub_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tickets", ["review_id"], name: "index_tickets_on_review_id"
  add_index "tickets", ["user_id"], name: "index_tickets_on_user_id"

  create_table "users", force: true do |t|
    t.string   "screen_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end

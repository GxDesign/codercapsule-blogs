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

ActiveRecord::Schema.define(version: 20151006193952) do

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "post_tags", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "post_tags", ["post_id"], name: "index_post_tags_on_post_id"
  add_index "post_tags", ["tag_id"], name: "index_post_tags_on_tag_id"

  create_table "post_types", force: :cascade do |t|
    t.string   "icon"
    t.string   "name"
    t.text     "begin_html"
    t.text     "end_html"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "author_id"
    t.string   "title"
    t.integer  "type_id"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.boolean  "published"
    t.datetime "published_at"
    t.datetime "updated_at",   null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "street_address"
    t.integer  "street_number"
    t.string   "route"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "country"
    t.string   "email"
    t.string   "username"
    t.string   "blog_url"
    t.string   "password"
    t.string   "avatar"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "classroom_id"
    t.string   "avatar"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "username"
    t.string   "blog_url"
    t.string   "password"
    t.string   "blog_title"
    t.text     "blog_description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "students", ["classroom_id"], name: "index_students_on_classroom_id"
  add_index "students", ["school_id"], name: "index_students_on_school_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_classrooms", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "classroom_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "teacher_classrooms", ["classroom_id"], name: "index_teacher_classrooms_on_classroom_id"
  add_index "teacher_classrooms", ["teacher_id"], name: "index_teacher_classrooms_on_teacher_id"

  create_table "teachers", force: :cascade do |t|
    t.integer  "school_id"
    t.string   "avatar"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "title"
    t.string   "email"
    t.string   "username"
    t.string   "blog_url"
    t.string   "password"
    t.string   "blog_title"
    t.text     "blog_description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "teachers", ["school_id"], name: "index_teachers_on_school_id"

end

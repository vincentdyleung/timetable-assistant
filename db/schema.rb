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

ActiveRecord::Schema.define(:version => 20121031042941) do

  create_table "course_infos", :force => true do |t|
    t.string   "previous_code"
    t.string   "description"
    t.string   "attributes"
    t.string   "vector"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "course_id"
  end

  create_table "course_sections", :force => true do |t|
    t.integer  "sis_id"
    t.string   "name"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "day"
    t.string   "room"
    t.string   "instructor"
    t.integer  "quota"
    t.integer  "enroll"
    t.integer  "available"
    t.integer  "wait"
    t.string   "remark"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "course_id"
  end

  create_table "courses", :force => true do |t|
    t.string   "code"
    t.string   "title"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "credits"
    t.integer  "subject_id"
    t.integer  "prerequisite"
  end

  create_table "subjects", :force => true do |t|
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "degree"
  end

end

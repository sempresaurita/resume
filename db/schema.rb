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

ActiveRecord::Schema.define(:version => 20120520110813) do

  create_table "educations", :force => true do |t|
    t.integer "resume_id"
    t.string  "school_name"
    t.string  "degree"
    t.string  "dates_attended"
    t.string  "type_of_study"
    t.string  "field_of_study"
    t.string  "city"
    t.string  "country"
  end

  create_table "personal_details", :force => true do |t|
    t.integer "resume_id"
    t.string  "firstname"
    t.string  "lastname"
    t.string  "address"
    t.string  "country"
    t.string  "telephone"
  end

  create_table "resumes", :force => true do |t|
  end

  create_table "rows", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

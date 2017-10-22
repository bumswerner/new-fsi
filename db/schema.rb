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

ActiveRecord::Schema.define(version: 20171022082446) do

  create_table "assoziations", force: :cascade do |t|
    t.string "code"
    t.string "instructor"
    t.integer "category_id"
    t.integer "courseofstudy_id"
    t.integer "lecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_assoziations_on_category_id"
    t.index ["courseofstudy_id"], name: "index_assoziations_on_courseofstudy_id"
    t.index ["lecture_id"], name: "index_assoziations_on_lecture_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "connections", force: :cascade do |t|
    t.string "name"
    t.integer "lecture_id"
    t.integer "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "faculty_id"
    t.index ["faculty_id"], name: "index_connections_on_faculty_id"
    t.index ["lecture_id"], name: "index_connections_on_lecture_id"
    t.index ["section_id"], name: "index_connections_on_section_id"
  end

  create_table "courseofstudies", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.text "description"
    t.integer "faculty_id"
    t.integer "studytype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "index_courseofstudies_on_faculty_id"
    t.index ["studytype_id"], name: "index_courseofstudies_on_studytype_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gallery_id"
    t.index ["gallery_id"], name: "index_images_on_gallery_id"
  end

  create_table "lectures", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "faculty_id"
    t.index ["faculty_id"], name: "index_lectures_on_faculty_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.text "discription"
    t.string "data_file_name"
    t.string "data_content_type"
    t.integer "data_file_size"
    t.datetime "data_updated_at"
    t.integer "section_id"
    t.integer "lecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "faculty_id"
    t.index ["faculty_id"], name: "index_materials_on_faculty_id"
    t.index ["lecture_id"], name: "index_materials_on_lecture_id"
    t.index ["section_id"], name: "index_materials_on_section_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "title"
    t.text "message"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "notificationtype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notificationtype_id"], name: "index_notifications_on_notificationtype_id"
  end

  create_table "notificationtypes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_notificationtypes_on_name", unique: true
  end

  create_table "profiles", force: :cascade do |t|
    t.string "nickname"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "studytypes", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "roles"
    t.string "username"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end

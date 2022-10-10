# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_10_240260) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointment_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.bigint "patient_id", null: false
    t.bigint "doctor_id", null: false
    t.bigint "appointment_type_id", null: false
    t.bigint "appointment_status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_status_id"], name: "index_appointments_on_appointment_status_id"
    t.index ["appointment_type_id"], name: "index_appointments_on_appointment_type_id"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "last_name"
    t.string "second_last_name"
    t.integer "mobile"
    t.string "email"
    t.string "specialty"
    t.integer "college_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "last_name"
    t.string "second_last_name"
    t.string "prefer_name"
    t.string "gender"
    t.date "date_of_birth"
    t.string "DNI"
    t.string "nationality"
    t.string "person_in_charge"
    t.string "relationship"
    t.string "address"
    t.integer "landline"
    t.integer "mobile"
    t.string "email"
    t.boolean "email_notification"
    t.string "find_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "profile_type"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["profile_type", "profile_id"], name: "index_users_on_profile"
  end

  add_foreign_key "appointments", "appointment_statuses"
  add_foreign_key "appointments", "appointment_types"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
end

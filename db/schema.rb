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

ActiveRecord::Schema[8.1].define(version: 2026_03_25_183904) do
  create_table "foods", force: :cascade do |t|
    t.integer "category"
    t.datetime "created_at", null: false
    t.string "large_portion_desc"
    t.integer "large_portion_fructose"
    t.integer "large_portion_lactose"
    t.integer "large_portion_oligos"
    t.integer "large_portion_polyols"
    t.string "name"
    t.string "notes"
    t.integer "overall_status"
    t.string "small_portion_desc"
    t.integer "small_portion_fructose"
    t.integer "small_portion_lactose"
    t.integer "small_portion_oligos"
    t.integer "small_portion_polyols"
    t.datetime "updated_at", null: false
  end
end

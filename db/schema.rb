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

ActiveRecord::Schema[7.0].define(version: 2022_10_10_121444) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.bigint "author_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id_id"], name: "index_groups_on_author_id_id"
  end

  create_table "operations", force: :cascade do |t|
    t.string "name"
    t.decimal "amount"
    t.bigint "author_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id_id"], name: "index_operations_on_author_id_id"
  end

  create_table "operations_groups", id: false, force: :cascade do |t|
    t.bigint "operation_id"
    t.bigint "group_id"
    t.index ["group_id"], name: "index_operations_groups_on_group_id"
    t.index ["operation_id"], name: "index_operations_groups_on_operation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "groups", "users", column: "author_id_id"
  add_foreign_key "operations", "users", column: "author_id_id"
end
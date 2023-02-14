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

ActiveRecord::Schema.define(version: 2023_02_14_183540) do

  create_table "invoice_in_items", force: :cascade do |t|
    t.integer "invoice_in_id"
    t.integer "item_id"
    t.integer "item_quantity"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoice_ins", force: :cascade do |t|
    t.string "invoice_no"
    t.date "date"
    t.integer "manufacturer_id"
    t.date "due_date"
    t.float "tax"
    t.float "total"
    t.float "grand_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "paid_status"
  end

  create_table "invoice_out_items", force: :cascade do |t|
    t.integer "invoice_out_id"
    t.integer "item_id"
    t.integer "item_quantity"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoice_outs", force: :cascade do |t|
    t.string "invoice_no"
    t.date "date"
    t.integer "store_id"
    t.date "due_date"
    t.float "tax"
    t.float "total"
    t.float "grand_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "paid_status"
  end

  create_table "items", force: :cascade do |t|
    t.integer "barcode"
    t.string "category"
    t.integer "manufacturer_id"
    t.float "buy_price"
    t.float "sell_price"
    t.string "item_name"
    t.integer "item_stock"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.integer "ABN"
    t.string "manufacturer_code"
    t.string "address"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "manufacturer_name"
  end

  create_table "stores", force: :cascade do |t|
    t.integer "ABN"
    t.string "store_code"
    t.string "address"
    t.string "city"
    t.string "store_name"
    t.integer "store_discount"
    t.integer "store_plafond"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "account_type"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "username"
  end

end

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

ActiveRecord::Schema.define(version: 2019_09_21_154111) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "method"
    t.string "name"
    t.integer "phone_number"
    t.integer "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.string "color"
    t.string "size"
    t.decimal "weight"
    t.integer "regular_price"
    t.integer "selling_price"
    t.integer "stock_quantity"
    t.integer "order_id"
    t.integer "order_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.string "delivery_name"
    t.string "delivery_address"
    t.integer "total_fee"
    t.integer "user_id"
    t.integer "delivery_id"
    t.integer "pay_method_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pay_methods", force: :cascade do |t|
    t.string "method"
    t.string "name"
    t.integer "phone_number"
    t.integer "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.integer "product_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_details", force: :cascade do |t|
    t.integer "color"
    t.string "size"
    t.decimal "weight"
    t.integer "regular_price"
    t.integer "selling_price"
    t.integer "stock_quantity"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_image"
  end

  create_table "product_images", force: :cascade do |t|
    t.integer "product_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_tags", force: :cascade do |t|
    t.integer "product_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "origin_country"
    t.integer "delivery_require_day"
    t.integer "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "postalcode"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 2
    t.string "bank_account_name"
    t.string "bank_account_branch"
    t.string "bank_account_number"
    t.string "bank_account_holder"
    t.string "bank_account_type"
    t.boolean "is_yucho"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

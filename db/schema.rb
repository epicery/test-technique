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

ActiveRecord::Schema[7.0].define(version: 2022_09_01_164126) do
  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price"
    t.integer "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_products_on_shop_id"
  end

  create_table "products_taxons", force: :cascade do |t|
    t.integer "product_id"
    t.integer "taxon_id"
    t.index ["product_id"], name: "index_products_taxons_on_product_id"
    t.index ["taxon_id"], name: "index_products_taxons_on_taxon_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "available_on", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops_taxons", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "taxon_id"
    t.index ["shop_id"], name: "index_shops_taxons_on_shop_id"
    t.index ["taxon_id"], name: "index_shops_taxons_on_taxon_id"
  end

  create_table "taxons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

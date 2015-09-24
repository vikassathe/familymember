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

ActiveRecord::Schema.define(version: 20150825111558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.text     "AllergyCode"
    t.text     "description"
    t.text     "Symptoms_information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appoints", force: :cascade do |t|
    t.text     "doctor_name"
    t.text     "patient_name"
    t.datetime "date"
    t.string   "urgency_level",      limit: 255
    t.text     "atype"
    t.string   "speciality",         limit: 255
    t.string   "status",             limit: 255
    t.text     "information"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "DaysOfAppointments", limit: 255
  end

  create_table "details", force: :cascade do |t|
    t.text     "PatientId"
    t.decimal  "Height"
    t.decimal  "Weight"
    t.text     "BP"
    t.text     "Fasting"
    t.text     "PP"
    t.text     "Random"
    t.decimal  "Age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "Date"
  end

  create_table "diseases", force: :cascade do |t|
    t.text     "disease_code"
    t.text     "description"
    t.text     "other_information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "middle_name",   limit: 255
    t.string   "last_name",     limit: 255
    t.text     "address1"
    t.text     "address2"
    t.text     "city"
    t.text     "tehasil"
    t.text     "district"
    t.integer  "pin"
    t.string   "phone_number",  limit: 255
    t.string   "email",         limit: 255
    t.text     "qualification"
    t.integer  "rgd_no"
    t.integer  "experience"
    t.string   "salutation",    limit: 255
    t.string   "specialist",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "familymembers", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.date     "birth_date"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "age"
  end

  create_table "observations", force: :cascade do |t|
    t.text     "PrimaryDetailID"
    t.text     "PatientID"
    t.datetime "Date"
    t.text     "DrID"
    t.text     "Observation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name",     limit: 255
    t.string   "middle_name",    limit: 255
    t.string   "last_name",      limit: 255
    t.text     "address1"
    t.text     "address2"
    t.text     "city"
    t.text     "tehasil"
    t.text     "district"
    t.integer  "pin"
    t.string   "phone_number",   limit: 255
    t.string   "email",          limit: 255
    t.text     "qualification"
    t.string   "marital_status", limit: 255
    t.string   "gender",         limit: 255
    t.datetime "date_created"
    t.string   "salutation",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_addresses", force: :cascade do |t|
    t.string   "firstname",         limit: 510
    t.string   "lastname",          limit: 510
    t.string   "address1",          limit: 510
    t.string   "address2",          limit: 510
    t.string   "city",              limit: 510
    t.string   "zipcode",           limit: 510
    t.string   "phone",             limit: 510
    t.string   "state_name",        limit: 510
    t.string   "alternative_phone", limit: 510
    t.string   "company",           limit: 510
    t.integer  "state_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mobile",            limit: 510
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "ship_secret"
  end

  create_table "spree_adjustments", force: :cascade do |t|
    t.integer  "source_id"
    t.string   "source_type",     limit: 510
    t.integer  "adjustable_id"
    t.string   "adjustable_type", limit: 510
    t.decimal  "amount",                      precision: 10, scale: 2
    t.string   "label",           limit: 510
    t.boolean  "mandatory"
    t.boolean  "eligible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",           limit: 510
    t.integer  "order_id"
    t.boolean  "included"
  end

  create_table "spree_answers", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_assets", force: :cascade do |t|
    t.integer  "viewable_id"
    t.string   "viewable_type",           limit: 510
    t.integer  "attachment_width"
    t.integer  "attachment_height"
    t.integer  "attachment_file_size"
    t.integer  "position"
    t.string   "attachment_content_type", limit: 510
    t.string   "attachment_file_name",    limit: 510
    t.string   "type",                    limit: 150
    t.datetime "attachment_updated_at"
    t.text     "alt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_authentication_methods", force: :cascade do |t|
    t.string   "environment", limit: 510
    t.string   "provider",    limit: 510
    t.string   "api_key",     limit: 510
    t.string   "api_secret",  limit: 510
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_calculators", force: :cascade do |t|
    t.string   "type",            limit: 510
    t.integer  "calculable_id"
    t.string   "calculable_type", limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "preferences"
  end

  create_table "spree_configurations", force: :cascade do |t|
    t.string   "name",       limit: 510
    t.string   "type",       limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_contacts", force: :cascade do |t|
    t.string   "first_name", limit: 510
    t.string   "last_name",  limit: 510
    t.string   "mobile",     limit: 510
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_countries", force: :cascade do |t|
    t.string   "iso_name",        limit: 510
    t.string   "iso",             limit: 510
    t.string   "iso3",            limit: 510
    t.string   "name",            limit: 510
    t.integer  "numcode"
    t.boolean  "states_required"
    t.datetime "updated_at"
  end

  create_table "spree_credit_cards", force: :cascade do |t|
    t.string   "month",                       limit: 510
    t.string   "year",                        limit: 510
    t.string   "cc_type",                     limit: 510
    t.string   "last_digits",                 limit: 510
    t.integer  "address_id"
    t.string   "gateway_customer_profile_id", limit: 510
    t.string   "gateway_payment_profile_id",  limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                        limit: 510
    t.integer  "user_id"
    t.integer  "payment_method_id"
  end

  create_table "spree_currencies", force: :cascade do |t|
    t.string   "num_code",   limit: 510, null: false
    t.string   "char_code",  limit: 510, null: false
    t.string   "name",       limit: 510, null: false
    t.boolean  "basic"
    t.string   "locale",     limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_currency_converters", force: :cascade do |t|
    t.integer  "currency_id", null: false
    t.datetime "date_req",    null: false
    t.float    "nominal",     null: false
    t.float    "value",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_delivers", force: :cascade do |t|
    t.text     "name"
    t.string   "sign",       limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address",    limit: 510
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
  end

  create_table "spree_feedback_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "review_id",                             null: false
    t.integer  "rating",                 default: 0
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "locale",     limit: 510, default: "en"
  end

  create_table "spree_gateways", force: :cascade do |t|
    t.string   "type",        limit: 510
    t.string   "name",        limit: 510
    t.text     "description"
    t.boolean  "active"
    t.string   "environment", limit: 510, default: "development"
    t.string   "server",      limit: 510, default: "test"
    t.boolean  "test_mode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "preferences"
  end

  create_table "spree_group_prices", force: :cascade do |t|
    t.decimal  "amount",                    precision: 8, scale: 2
    t.string   "discount_type", limit: 510
    t.string   "name",          limit: 510
    t.string   "range",         limit: 510
    t.integer  "position"
    t.integer  "variant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_inventory_units", force: :cascade do |t|
    t.string   "state",                   limit: 510
    t.integer  "variant_id"
    t.integer  "order_id"
    t.integer  "shipment_id"
    t.integer  "return_authorization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "pending"
    t.integer  "line_item_id"
  end

  create_table "spree_likes", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.integer  "user_id"
  end

  create_table "spree_line_items", force: :cascade do |t|
    t.integer  "variant_id"
    t.integer  "order_id"
    t.integer  "quantity",                                                                null: false
    t.decimal  "price",                            precision: 10, scale: 2,               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currency",             limit: 510
    t.decimal  "cost_price",                       precision: 10, scale: 2
    t.integer  "tax_category_id"
    t.decimal  "adjustment_total",                 precision: 10, scale: 2, default: 0.0
    t.decimal  "additional_tax_total",             precision: 10, scale: 2, default: 0.0
    t.decimal  "promo_total",                      precision: 10, scale: 2, default: 0.0
    t.decimal  "included_tax_total",               precision: 10, scale: 2, default: 0.0, null: false
    t.decimal  "pre_tax_amount",                   precision: 8,  scale: 2
  end

  create_table "spree_log_entries", force: :cascade do |t|
    t.integer  "source_id"
    t.string   "source_type", limit: 510
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_manufacture_photos", force: :cascade do |t|
    t.integer "manufacture_id"
    t.string  "picture",        limit: 510
  end

  create_table "spree_manufactures", force: :cascade do |t|
    t.text     "product_name"
    t.decimal  "price",                    precision: 10
    t.text     "description"
    t.string   "picture",      limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address",      limit: 510
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
  end

  create_table "spree_option_types", force: :cascade do |t|
    t.string   "name",         limit: 200
    t.string   "presentation", limit: 200
    t.integer  "position",                 default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_option_types_prototypes", id: false, force: :cascade do |t|
    t.integer "prototype_id"
    t.integer "option_type_id"
  end

  create_table "spree_option_values", force: :cascade do |t|
    t.integer  "position"
    t.string   "name",           limit: 510
    t.string   "presentation",   limit: 510
    t.integer  "option_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_option_values_variants", id: false, force: :cascade do |t|
    t.integer "variant_id"
    t.integer "option_value_id"
  end

  create_table "spree_orderinfos", force: :cascade do |t|
    t.string   "status",     limit: 510
    t.string   "mode",       limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "order_id",   limit: 510
  end

  create_table "spree_orders", force: :cascade do |t|
    t.string   "number",                 limit: 64
    t.decimal  "item_total",                         precision: 10, scale: 2, default: 0.0,     null: false
    t.decimal  "total",                              precision: 10, scale: 2, default: 0.0,     null: false
    t.string   "state",                  limit: 510
    t.decimal  "adjustment_total",                   precision: 10, scale: 2, default: 0.0,     null: false
    t.integer  "user_id"
    t.datetime "completed_at"
    t.integer  "bill_address_id"
    t.integer  "ship_address_id"
    t.decimal  "payment_total",                      precision: 10, scale: 2, default: 0.0
    t.integer  "shipping_method_id"
    t.string   "shipment_state",         limit: 510
    t.string   "payment_state",          limit: 510
    t.string   "email",                  limit: 510
    t.text     "special_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currency",               limit: 510
    t.string   "last_ip_address",        limit: 510
    t.integer  "created_by_id"
    t.decimal  "shipment_total",                     precision: 10, scale: 2, default: 0.0,     null: false
    t.decimal  "additional_tax_total",               precision: 10, scale: 2, default: 0.0
    t.decimal  "promo_total",                        precision: 10, scale: 2, default: 0.0
    t.string   "channel",                limit: 510,                          default: "spree"
    t.decimal  "included_tax_total",                 precision: 10, scale: 2, default: 0.0,     null: false
    t.integer  "item_count",                                                  default: 0
    t.integer  "approver_id"
    t.datetime "approved_at"
    t.boolean  "confirmation_delivered"
    t.boolean  "considered_risky"
    t.string   "guest_token",            limit: 510
    t.integer  "delivery_user_id"
    t.integer  "delivery_id"
  end

  create_table "spree_orders_promotions", id: false, force: :cascade do |t|
    t.integer "order_id"
    t.integer "promotion_id"
  end

  create_table "spree_payment_capture_events", force: :cascade do |t|
    t.decimal  "amount",     precision: 10, scale: 2, default: 0.0
    t.integer  "payment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_payment_methods", force: :cascade do |t|
    t.string   "type",         limit: 510
    t.string   "name",         limit: 510
    t.text     "description"
    t.boolean  "active"
    t.string   "environment",  limit: 510, default: "development"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "display_on",   limit: 510
    t.boolean  "auto_capture"
    t.text     "preferences"
  end

  create_table "spree_payments", force: :cascade do |t|
    t.decimal  "amount",                           precision: 10, scale: 2, default: 0.0, null: false
    t.integer  "order_id"
    t.integer  "source_id"
    t.string   "source_type",          limit: 510
    t.integer  "payment_method_id"
    t.string   "state",                limit: 510
    t.string   "response_code",        limit: 510
    t.string   "avs_response",         limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "identifier",           limit: 510
    t.string   "cvv_response_code",    limit: 510
    t.string   "cvv_response_message", limit: 510
  end

  create_table "spree_payupayments", force: :cascade do |t|
    t.string   "mode",       limit: 510
    t.string   "status",     limit: 510
    t.decimal  "amount",                 precision: 10
    t.string   "order_id",   limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname",  limit: 255
    t.string   "lastname",   limit: 255
  end

  create_table "spree_post_attachments", force: :cascade do |t|
    t.integer  "manufacture_id"
    t.string   "avatar",         limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_preferences", force: :cascade do |t|
    t.text     "value"
    t.string   "key",        limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_preferences", ["key"], name: "spree_preferences_key_key", unique: true, using: :btree

  create_table "spree_prices", force: :cascade do |t|
    t.integer  "variant_id",                                      null: false
    t.decimal  "amount",                 precision: 10, scale: 2
    t.string   "currency",   limit: 510
    t.datetime "deleted_at"
  end

  create_table "spree_product_option_types", force: :cascade do |t|
    t.integer  "position"
    t.integer  "product_id"
    t.integer  "option_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_product_properties", force: :cascade do |t|
    t.string   "value",       limit: 510
    t.integer  "product_id"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",                default: 0
  end

  create_table "spree_products", force: :cascade do |t|
    t.string   "name",                 limit: 510,                         default: "",  null: false
    t.text     "description"
    t.datetime "available_on"
    t.datetime "deleted_at"
    t.string   "slug",                 limit: 510
    t.text     "meta_description"
    t.string   "meta_keywords",        limit: 510
    t.integer  "tax_category_id"
    t.integer  "shipping_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "likes_count",                                              default: 0
    t.decimal  "avg_rating",                       precision: 7, scale: 5, default: 0.0, null: false
    t.integer  "reviews_count",                                            default: 0,   null: false
  end

  add_index "spree_products", ["slug"], name: "spree_products_slug_key", unique: true, using: :btree

  create_table "spree_products_promotion_rules", id: false, force: :cascade do |t|
    t.integer "product_id"
    t.integer "promotion_rule_id"
  end

  create_table "spree_products_taxons", force: :cascade do |t|
    t.integer "product_id"
    t.integer "taxon_id"
    t.integer "position"
  end

  create_table "spree_promotion_action_line_items", force: :cascade do |t|
    t.integer "promotion_action_id"
    t.integer "variant_id"
    t.integer "quantity",            default: 1
  end

  create_table "spree_promotion_actions", force: :cascade do |t|
    t.integer  "promotion_id"
    t.integer  "position"
    t.string   "type",         limit: 510
    t.datetime "deleted_at"
  end

  create_table "spree_promotion_rules", force: :cascade do |t|
    t.integer  "promotion_id"
    t.integer  "user_id"
    t.integer  "product_group_id"
    t.string   "type",             limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code",             limit: 510
    t.text     "preferences"
  end

  create_table "spree_promotion_rules_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "promotion_rule_id"
  end

  create_table "spree_promotions", force: :cascade do |t|
    t.string   "description",  limit: 510
    t.datetime "expires_at"
    t.datetime "starts_at"
    t.string   "name",         limit: 510
    t.string   "type",         limit: 510
    t.integer  "usage_limit"
    t.string   "match_policy", limit: 510, default: "all"
    t.string   "code",         limit: 510
    t.boolean  "advertise"
    t.string   "path",         limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_properties", force: :cascade do |t|
    t.string   "name",         limit: 510
    t.string   "presentation", limit: 510, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_properties_prototypes", id: false, force: :cascade do |t|
    t.integer "prototype_id"
    t.integer "property_id"
  end

  create_table "spree_prototypes", force: :cascade do |t|
    t.string   "name",       limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_questions", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "user_id"
    t.text     "content"
    t.boolean  "is_visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_return_authorizations", force: :cascade do |t|
    t.string   "number",            limit: 510
    t.string   "state",             limit: 510
    t.decimal  "amount",                        precision: 10, scale: 2, default: 0.0, null: false
    t.integer  "order_id"
    t.text     "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_location_id"
  end

  create_table "spree_reviews", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name",       limit: 510
    t.string   "location",   limit: 510
    t.integer  "rating"
    t.text     "title"
    t.text     "review"
    t.boolean  "approved"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "ip_address", limit: 510
    t.string   "locale",     limit: 510, default: "en"
  end

  create_table "spree_roles", force: :cascade do |t|
    t.string "name", limit: 510
  end

  create_table "spree_roles_users", id: false, force: :cascade do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "spree_shipments", force: :cascade do |t|
    t.string   "tracking",             limit: 510
    t.string   "number",               limit: 510
    t.decimal  "cost",                             precision: 10, scale: 2, default: 0.0
    t.datetime "shipped_at"
    t.integer  "order_id"
    t.integer  "address_id"
    t.string   "state",                limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_location_id"
    t.decimal  "adjustment_total",                 precision: 10, scale: 2, default: 0.0
    t.decimal  "additional_tax_total",             precision: 10, scale: 2, default: 0.0
    t.decimal  "promo_total",                      precision: 10, scale: 2, default: 0.0
    t.decimal  "included_tax_total",               precision: 10, scale: 2, default: 0.0, null: false
    t.decimal  "pre_tax_amount",                   precision: 8,  scale: 2
  end

  create_table "spree_shipping_categories", force: :cascade do |t|
    t.string   "name",       limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_shipping_method_categories", force: :cascade do |t|
    t.integer  "shipping_method_id",   null: false
    t.integer  "shipping_category_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spree_shipping_method_categories", ["shipping_category_id", "shipping_method_id"], name: "spree_shipping_method_categor_shipping_category_id_shipping_key", unique: true, using: :btree

  create_table "spree_shipping_methods", force: :cascade do |t|
    t.string   "name",            limit: 510
    t.string   "display_on",      limit: 510
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tracking_url",    limit: 510
    t.string   "admin_name",      limit: 510
    t.integer  "tax_category_id"
  end

  create_table "spree_shipping_methods_zones", id: false, force: :cascade do |t|
    t.integer "shipping_method_id"
    t.integer "zone_id"
  end

  create_table "spree_shipping_rates", force: :cascade do |t|
    t.integer  "shipment_id"
    t.integer  "shipping_method_id"
    t.boolean  "selected"
    t.decimal  "cost",               precision: 8, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tax_rate_id"
  end

  add_index "spree_shipping_rates", ["shipment_id", "shipping_method_id"], name: "spree_shipping_rates_shipment_id_shipping_method_id_key", unique: true, using: :btree

  create_table "spree_skrill_transactions", force: :cascade do |t|
    t.string   "email",          limit: 510
    t.float    "amount"
    t.string   "currency",       limit: 510
    t.integer  "transaction_id"
    t.integer  "customer_id"
    t.string   "payment_type",   limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_slides", force: :cascade do |t|
    t.string   "name",               limit: 510
    t.text     "body"
    t.string   "link_url",           limit: 510
    t.boolean  "published"
    t.string   "image_file_name",    limit: 510
    t.string   "image_content_type", limit: 510
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",                       default: 0, null: false
    t.integer  "product_id"
  end

  create_table "spree_state_changes", force: :cascade do |t|
    t.string   "name",           limit: 510
    t.string   "previous_state", limit: 510
    t.integer  "stateful_id"
    t.integer  "user_id"
    t.string   "stateful_type",  limit: 510
    t.string   "next_state",     limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_states", force: :cascade do |t|
    t.string   "name",       limit: 510
    t.string   "abbr",       limit: 510
    t.integer  "country_id"
    t.datetime "updated_at"
  end

  create_table "spree_stock_items", force: :cascade do |t|
    t.integer  "stock_location_id"
    t.integer  "variant_id"
    t.integer  "count_on_hand",     default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "backorderable"
    t.datetime "deleted_at"
  end

  create_table "spree_stock_locations", force: :cascade do |t|
    t.string   "name",                   limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address1",               limit: 510
    t.string   "address2",               limit: 510
    t.string   "city",                   limit: 510
    t.integer  "state_id"
    t.string   "state_name",             limit: 510
    t.integer  "country_id"
    t.string   "zipcode",                limit: 510
    t.string   "phone",                  limit: 510
    t.boolean  "active"
    t.boolean  "backorderable_default"
    t.boolean  "propagate_all_variants"
    t.string   "admin_name",             limit: 510
  end

  create_table "spree_stock_movements", force: :cascade do |t|
    t.integer  "stock_item_id"
    t.integer  "quantity",                    default: 0
    t.string   "action",          limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "originator_id"
    t.string   "originator_type", limit: 510
  end

  create_table "spree_stock_transfers", force: :cascade do |t|
    t.string   "type",                    limit: 510
    t.string   "reference",               limit: 510
    t.integer  "source_location_id"
    t.integer  "destination_location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number",                  limit: 510
  end

  create_table "spree_stores", force: :cascade do |t|
    t.string   "name",              limit: 510
    t.string   "url",               limit: 510
    t.text     "meta_description"
    t.text     "meta_keywords"
    t.string   "seo_title",         limit: 510
    t.string   "mail_from_address", limit: 510
    t.string   "default_currency",  limit: 510
    t.string   "code",              limit: 510
    t.boolean  "default",                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_tax_categories", force: :cascade do |t|
    t.string   "name",        limit: 510
    t.string   "description", limit: 510
    t.boolean  "is_default"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_tax_rates", force: :cascade do |t|
    t.decimal  "amount",                         precision: 8, scale: 5
    t.integer  "zone_id"
    t.integer  "tax_category_id"
    t.boolean  "included_in_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",               limit: 510
    t.boolean  "show_rate_in_label"
    t.datetime "deleted_at"
  end

  create_table "spree_taxonomies", force: :cascade do |t|
    t.string   "name",       limit: 510,             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",               default: 0
  end

  create_table "spree_taxons", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "position",                      default: 0
    t.string   "name",              limit: 510,             null: false
    t.string   "permalink",         limit: 510
    t.integer  "taxonomy_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.string   "icon_file_name",    limit: 510
    t.string   "icon_content_type", limit: 510
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_title",        limit: 510
    t.string   "meta_description",  limit: 510
    t.string   "meta_keywords",     limit: 510
    t.integer  "depth"
  end

  create_table "spree_taxons_prototypes", force: :cascade do |t|
    t.integer "taxon_id"
    t.integer "prototype_id"
  end

  add_index "spree_taxons_prototypes", ["prototype_id"], name: "index_spree_taxons_prototypes_on_prototype_id", using: :btree
  add_index "spree_taxons_prototypes", ["taxon_id"], name: "index_spree_taxons_prototypes_on_taxon_id", using: :btree

  create_table "spree_tokenized_permissions", force: :cascade do |t|
    t.integer  "permissable_id"
    t.string   "permissable_type", limit: 510
    t.string   "token",            limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_trackers", force: :cascade do |t|
    t.string   "environment",  limit: 510
    t.string   "analytics_id", limit: 510
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_user_authentications", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider",   limit: 510
    t.string   "uid",        limit: 510
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_users", force: :cascade do |t|
    t.string   "encrypted_password",     limit: 256
    t.string   "password_salt",          limit: 256
    t.string   "email",                  limit: 510
    t.string   "remember_token",         limit: 510
    t.string   "persistence_token",      limit: 510
    t.string   "reset_password_token",   limit: 510
    t.string   "perishable_token",       limit: 510
    t.integer  "sign_in_count",                      default: 0, null: false
    t.integer  "failed_attempts",                    default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 510
    t.string   "last_sign_in_ip",        limit: 510
    t.string   "login",                  limit: 510
    t.integer  "ship_address_id"
    t.integer  "bill_address_id"
    t.string   "authentication_token",   limit: 510
    t.string   "unlock_token",           limit: 510
    t.datetime "locked_at"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "spree_api_key",          limit: 96
    t.datetime "remember_created_at"
  end

  add_index "spree_users", ["email"], name: "spree_users_email_key", unique: true, using: :btree

  create_table "spree_variants", force: :cascade do |t|
    t.string   "sku",             limit: 510,                          default: "",  null: false
    t.decimal  "weight",                      precision: 8,  scale: 2, default: 0.0
    t.decimal  "height",                      precision: 8,  scale: 2
    t.decimal  "width",                       precision: 8,  scale: 2
    t.decimal  "depth",                       precision: 8,  scale: 2
    t.datetime "deleted_at"
    t.boolean  "is_master"
    t.integer  "product_id"
    t.decimal  "cost_price",                  precision: 10, scale: 2
    t.integer  "position"
    t.string   "cost_currency",   limit: 510
    t.boolean  "track_inventory"
    t.integer  "tax_category_id"
    t.datetime "updated_at"
    t.integer  "mrp"
  end

  create_table "spree_videos", force: :cascade do |t|
    t.string   "link",       limit: 510
    t.string   "title",      limit: 510
    t.string   "author",     limit: 510
    t.string   "duration",   limit: 510
    t.integer  "likes"
    t.integer  "dislikes"
    t.string   "uid",        limit: 510
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_volume_prices", force: :cascade do |t|
    t.integer  "variant_id"
    t.string   "name",          limit: 510
    t.string   "range",         limit: 510
    t.decimal  "amount",                    precision: 8, scale: 2
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "discount_type", limit: 510
  end

  create_table "spree_wishlists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_zone_members", force: :cascade do |t|
    t.integer  "zoneable_id"
    t.string   "zoneable_type", limit: 510
    t.integer  "zone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spree_zones", force: :cascade do |t|
    t.string   "name",               limit: 510
    t.string   "description",        limit: 510
    t.boolean  "default_tax"
    t.integer  "zone_members_count",             default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "symptoms", force: :cascade do |t|
    t.text     "symptom_code"
    t.text     "description"
    t.text     "other_information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testgroups", force: :cascade do |t|
    t.text     "GroupCode"
    t.text     "Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: :cascade do |t|
    t.text     "TestCode"
    t.text     "GroupCode"
    t.text     "Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: :cascade do |t|
    t.string   "uid",        limit: 510
    t.string   "link",       limit: 510
    t.string   "title",      limit: 510
    t.string   "author",     limit: 510
    t.string   "duration",   limit: 510
    t.integer  "likes"
    t.integer  "dislikes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

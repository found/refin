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

ActiveRecord::Schema.define(:version => 20120820005810) do

  create_table "addresses", :force => true do |t|
    t.integer  "member_id"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "address_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id",   :default => 232, :null => false
  end

  create_table "cat_prog_juncs", :force => true do |t|
    t.integer  "category_id"
    t.integer  "program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.text     "category_short_description"
    t.text     "category_description"
    t.integer  "category_image_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
  end

  add_index "categories", ["ancestry"], :name => "index_categories_on_ancestry"
  add_index "categories", ["category_name"], :name => "index_categories_on_category_name"
  add_index "categories", ["id"], :name => "index_categories_on_id"

  create_table "contact_instances", :force => true do |t|
    t.integer  "contact_id"
    t.text     "message"
    t.boolean  "request_follow_up"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.integer  "member_id"
    t.boolean  "newsletter_recipient"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country",              :default => "UNITED STATES"
  end

  add_index "contacts", ["id"], :name => "index_contacts_on_id"

  create_table "content_holders", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "content_holders", ["id"], :name => "index_content_holders_on_id"
  add_index "content_holders", ["title"], :name => "index_content_holders_on_title"

  create_table "countries", :force => true do |t|
    t.string   "country_code",                :null => false
    t.string   "country_name",                :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",     :default => 0
  end

  add_index "countries", ["country_code"], :name => "index_countries_on_country_code"
  add_index "countries", ["country_name"], :name => "index_countries_on_country_name"
  add_index "countries", ["id"], :name => "index_countries_on_id"

  create_table "donation_adjustments", :force => true do |t|
    t.integer  "program_id"
    t.integer  "percentage_change"
    t.datetime "effective_date"
    t.text     "reasoning"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_contents", :force => true do |t|
    t.string   "subject"
    t.string   "from"
    t.string   "bcc"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", :force => true do |t|
    t.string   "subject"
    t.string   "from"
    t.string   "bcc"
    t.text     "body"
    t.string   "template_model"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emails", ["id"], :name => "index_emails_on_id"

  create_table "event_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cached_slug"
  end

  create_table "event_categorizations", :force => true do |t|
    t.integer  "event_id"
    t.integer  "event_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_categorizations", ["event_category_id"], :name => "index_event_categorizations_on_event_category_id"
  add_index "event_categorizations", ["event_id"], :name => "index_event_categorizations_on_event_id"

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string   "venue_name"
    t.string   "venue_address"
    t.decimal  "ticket_price",  :precision => 8, :scale => 2
    t.string   "ticket_link"
    t.text     "description"
    t.boolean  "featured"
    t.integer  "image_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cached_slug"
  end

  add_index "events", ["id"], :name => "index_events_on_id"

  create_table "images", :force => true do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_uid"
    t.string   "image_ext"
  end

  create_table "invoices", :force => true do |t|
    t.integer  "member_id"
    t.integer  "subscription_id"
    t.integer  "transaction_id"
    t.decimal  "amount",             :precision => 10, :scale => 2
    t.integer  "number"
    t.boolean  "settled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
    t.integer  "payment_profile_id"
    t.string   "payment_method"
    t.string   "payment_number"
    t.boolean  "exported",                                          :default => false
    t.text     "notes"
    t.boolean  "cancelled",                                         :default => false
    t.datetime "cancelled_on"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "order_id"
    t.integer  "program_id"
    t.integer  "quantity"
    t.decimal  "price",      :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "recurring",                                 :default => false
    t.integer  "invoice_id"
  end

  add_index "line_items", ["id"], :name => "index_line_items_on_id"
  add_index "line_items", ["order_id"], :name => "index_line_items_on_order_id"
  add_index "line_items", ["program_id"], :name => "index_line_items_on_donation_id"

  create_table "members", :force => true do |t|
    t.string   "email",                                   :null => false
    t.string   "encrypted_password",                      :null => false
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "perishable_token"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.string   "remember_token"
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "organization"
    t.datetime "member_until"
    t.string   "username",                                :null => false
    t.string   "customer_cim_id"
    t.string   "donor_number"
    t.boolean  "verified",             :default => false
    t.boolean  "restrict_emails",      :default => false
  end

  create_table "news_item_translations", :force => true do |t|
    t.integer  "news_item_id"
    t.string   "locale"
    t.string   "title"
    t.text     "body"
    t.string   "external_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "news_item_translations", ["news_item_id"], :name => "index_news_item_translations_on_news_item_id"

  create_table "news_items", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "publish_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "external_url"
    t.integer  "image_id"
    t.string   "news_type",     :default => "CAM Newsletter"
    t.text     "image_caption"
    t.integer  "program_id"
    t.string   "subtitle"
  end

  add_index "news_items", ["id"], :name => "index_news_items_on_id"

  create_table "order_states", :force => true do |t|
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_states", ["id"], :name => "index_order_states_on_id"
  add_index "order_states", ["state"], :name => "index_order_states_on_state"

  create_table "orders", :force => true do |t|
    t.integer  "member_id"
    t.decimal  "item_total",     :precision => 10, :scale => 2
    t.decimal  "total",          :precision => 10, :scale => 2
    t.integer  "order_state_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["id"], :name => "index_orders_on_id"

  create_table "page_part_translations", :force => true do |t|
    t.integer  "page_part_id"
    t.string   "locale"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_part_translations", ["page_part_id"], :name => "index_page_part_translations_on_page_part_id"

  create_table "page_parts", :force => true do |t|
    t.integer  "page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_parts", ["id"], :name => "index_page_parts_on_id"
  add_index "page_parts", ["page_id"], :name => "index_page_parts_on_page_id"

  create_table "page_translations", :force => true do |t|
    t.integer  "page_id"
    t.string   "locale"
    t.string   "title"
    t.string   "custom_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_translations", ["page_id"], :name => "index_page_translations_on_page_id"

  create_table "pages", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "position"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "show_in_menu",        :default => true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           :default => true
    t.string   "custom_title_type",   :default => "none"
    t.boolean  "draft",               :default => false
    t.boolean  "skip_to_first_child", :default => false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
  end

  add_index "pages", ["depth"], :name => "index_pages_on_depth"
  add_index "pages", ["id"], :name => "index_pages_on_id"
  add_index "pages", ["lft"], :name => "index_pages_on_lft"
  add_index "pages", ["parent_id"], :name => "index_pages_on_parent_id"
  add_index "pages", ["rgt"], :name => "index_pages_on_rgt"

  create_table "pages_roles", :id => false, :force => true do |t|
    t.integer "page_id"
    t.integer "role_id"
  end

  create_table "payment_profiles", :force => true do |t|
    t.integer  "member_id"
    t.string   "payment_cim_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "payment_type"
    t.string   "credit_card_number"
    t.string   "bank_routing_number"
  end

  create_table "programs", :force => true do |t|
    t.string   "program_name"
    t.text     "program_short_description"
    t.text     "program_description"
    t.integer  "program_image_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "monthly_suggested_amounts"
    t.string   "subtitle"
    t.boolean  "monthly_enabled",            :default => true
    t.boolean  "one_time_enabled",           :default => true
    t.text     "one_time_suggested_amounts"
    t.string   "default_donation_type",      :default => "monthly"
    t.text     "image_caption"
    t.string   "abbreviation"
    t.boolean  "disabled",                   :default => false
  end

  add_index "programs", ["id"], :name => "index_donations_on_id"
  add_index "programs", ["id"], :name => "index_programs_on_id"

  create_table "receipts", :force => true do |t|
    t.integer  "invoice_id"
    t.datetime "date_to_send"
    t.boolean  "sent",           :default => false
    t.boolean  "cancelled"
    t.datetime "date_cancelled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_events", :force => true do |t|
    t.string   "title"
    t.datetime "date"
    t.integer  "photo_id"
    t.text     "blurb"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_images", :force => true do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.string   "image_uid"
    t.string   "image_ext"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "refinery_page_part_translations", :force => true do |t|
    t.integer  "refinery_page_part_id"
    t.string   "locale"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "refinery_page_part_translations", ["locale"], :name => "index_refinery_page_part_translations_on_locale"
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], :name => "index_f9716c4215584edbca2557e32706a5ae084a15ef"

  create_table "refinery_page_parts", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_parts", ["id"], :name => "index_refinery_page_parts_on_id"
  add_index "refinery_page_parts", ["refinery_page_id"], :name => "index_refinery_page_parts_on_refinery_page_id"

  create_table "refinery_page_translations", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "locale"
    t.string   "title"
    t.string   "custom_slug"
    t.string   "menu_title"
    t.string   "slug"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_translations", ["locale"], :name => "index_refinery_page_translations_on_locale"
  add_index "refinery_page_translations", ["refinery_page_id"], :name => "index_d079468f88bff1c6ea81573a0d019ba8bf5c2902"

  create_table "refinery_pages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.boolean  "show_in_menu",        :default => true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           :default => true
    t.boolean  "draft",               :default => false
    t.boolean  "skip_to_first_child", :default => false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "refinery_pages", ["depth"], :name => "index_refinery_pages_on_depth"
  add_index "refinery_pages", ["id"], :name => "index_refinery_pages_on_id"
  add_index "refinery_pages", ["lft"], :name => "index_refinery_pages_on_lft"
  add_index "refinery_pages", ["parent_id"], :name => "index_refinery_pages_on_parent_id"
  add_index "refinery_pages", ["rgt"], :name => "index_refinery_pages_on_rgt"

  create_table "refinery_resources", :force => true do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_uid"
    t.string   "file_ext"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "refinery_roles", :force => true do |t|
    t.string "title"
  end

  create_table "refinery_roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "refinery_roles_users", ["role_id", "user_id"], :name => "index_refinery_roles_users_on_role_id_and_user_id"
  add_index "refinery_roles_users", ["user_id", "role_id"], :name => "index_refinery_roles_users_on_user_id_and_role_id"

  create_table "refinery_settings", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.boolean  "destroyable",             :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "scoping"
    t.boolean  "restricted",              :default => false
    t.string   "callback_proc_as_string"
    t.string   "form_value_type"
  end

  add_index "refinery_settings", ["name"], :name => "index_refinery_settings_on_name"

  create_table "refinery_user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "refinery_user_plugins", ["name"], :name => "index_refinery_user_plugins_on_name"
  add_index "refinery_user_plugins", ["user_id", "name"], :name => "index_refinery_user_plugins_on_user_id_and_name", :unique => true

  create_table "refinery_users", :force => true do |t|
    t.string   "username",               :null => false
    t.string   "email",                  :null => false
    t.string   "encrypted_password",     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "refinery_users", ["id"], :name => "index_refinery_users_on_id"

  create_table "resources", :force => true do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_uid"
    t.string   "file_ext"
  end

  create_table "roles", :force => true do |t|
    t.string "title"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "roles_users", ["role_id", "user_id"], :name => "index_roles_users_on_role_id_and_user_id"
  add_index "roles_users", ["user_id", "role_id"], :name => "index_roles_users_on_user_id_and_role_id"

  create_table "seo_meta", :force => true do |t|
    t.integer  "seo_meta_id"
    t.string   "seo_meta_type"
    t.string   "browser_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seo_meta", ["id"], :name => "index_seo_meta_on_id"
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], :name => "index_seo_meta_on_seo_meta_id_and_seo_meta_type"

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope",          :limit => 40
    t.datetime "created_at"
    t.string   "locale"
  end

  add_index "slugs", ["locale"], :name => "index_slugs_on_locale"
  add_index "slugs", ["name", "sluggable_type", "scope", "sequence"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "subscription_adjustments", :force => true do |t|
    t.integer  "subscription_id"
    t.integer  "donation_adjustment_id"
    t.decimal  "amount",                 :precision => 10, :scale => 2
    t.string   "token"
    t.datetime "confirmed"
    t.decimal  "original_amount",        :precision => 10, :scale => 2
  end

  create_table "subscription_transactions", :force => true do |t|
    t.integer  "subscription_id"
    t.string   "response_code"
    t.string   "response_reason"
    t.integer  "transaction_id"
    t.integer  "payment_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "success"
    t.decimal  "amount",          :precision => 10, :scale => 2, :default => 0.0
  end

  create_table "subscription_types", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "day"
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "member_id"
    t.integer  "subscription_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "amount",               :precision => 10, :scale => 2
    t.integer  "arb_subscription_id"
    t.integer  "program_id"
    t.integer  "invoice_id"
    t.string   "payment_method"
    t.string   "payment_number"
    t.string   "start_date"
    t.boolean  "active",                                              :default => true
    t.datetime "end_date"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "invoice_id"
    t.string   "confirmation_id"
    t.boolean  "error",                                          :default => false
    t.string   "error_code"
    t.string   "error_message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "amount",          :precision => 10, :scale => 2
  end

  create_table "user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "user_plugins", ["name"], :name => "index_user_plugins_on_title"
  add_index "user_plugins", ["user_id", "name"], :name => "index_unique_user_plugins", :unique => true

  create_table "users", :force => true do |t|
    t.string   "username",             :null => false
    t.string   "email",                :null => false
    t.string   "encrypted_password",   :null => false
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "perishable_token"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.string   "remember_token"
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "organization"
    t.string   "street_address"
    t.string   "city"
    t.integer  "province"
    t.string   "postal_code"
    t.datetime "member_until"
    t.string   "role_id"
  end

end

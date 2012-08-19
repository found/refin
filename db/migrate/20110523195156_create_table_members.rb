class CreateTableMembers < ActiveRecord::Migration
  def self.up
    create_table "members" do |t|
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

  def self.down
  end
end

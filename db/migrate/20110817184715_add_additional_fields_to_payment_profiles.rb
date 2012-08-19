class AddAdditionalFieldsToPaymentProfiles < ActiveRecord::Migration
  def self.up
    add_column :payment_profiles, :payment_type, :string
    add_column :payment_profiles, :credit_card_number, :string
    add_column :payment_profiles, :bank_routing_number, :string
  end

  def self.down
  end
end

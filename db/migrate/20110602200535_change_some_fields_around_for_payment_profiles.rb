class ChangeSomeFieldsAroundForPaymentProfiles < ActiveRecord::Migration
  def self.up
    remove_column :members, :payment_profile_id
    remove_column :members, :subscription_id
  end

  def self.down
  end
end

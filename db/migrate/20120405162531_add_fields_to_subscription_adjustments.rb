class AddFieldsToSubscriptionAdjustments < ActiveRecord::Migration
  def self.up
    add_column :subscription_adjustments, :token, :string
    add_column :subscription_adjustments, :confirmed, :datetime
  end

  def self.down
  end
end

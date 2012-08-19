class AddOriginalAmountToSubscriptionAdjustments < ActiveRecord::Migration
  def self.up
    add_column :subscription_adjustments, :original_amount, :decimal, :precision => 10, :scale => 2
  end

  def self.down
  end
end

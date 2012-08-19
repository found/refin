class AddColumnToSubscriptions < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :arb_subscription_id, :integer
  end

  def self.down
    remove_column :subscriptions, :arb_subscription_id
  end
end

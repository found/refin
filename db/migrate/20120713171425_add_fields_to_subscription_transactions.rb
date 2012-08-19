class AddFieldsToSubscriptionTransactions < ActiveRecord::Migration
  def self.up
    add_column :subscription_transactions, :success, :boolean
  end

  def self.down
    remove_column :subscription_transactions, :success
  end
end

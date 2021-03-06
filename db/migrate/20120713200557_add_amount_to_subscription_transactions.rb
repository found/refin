class AddAmountToSubscriptionTransactions < ActiveRecord::Migration
  def self.up
    add_column :subscription_transactions, :amount, :decimal, :precision => 10, :scale => 2, :default => 0.00
  end

  def self.down
    remove_column :subscription_transactions, :amount
  end
end

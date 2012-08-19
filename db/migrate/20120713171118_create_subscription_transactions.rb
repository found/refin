class CreateSubscriptionTransactions < ActiveRecord::Migration
  def self.up
    create_table :subscription_transactions do |t|
      t.integer :subscription_id
      t.string :response_code
      t.string :response_reason
      t.integer :transaction_id
      t.integer :payment_count

      t.timestamps
    end
  end

  def self.down
    drop_table :subscription_transactions
  end
end

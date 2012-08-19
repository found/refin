class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.integer :member_id
      t.integer :subscription_type_id
      t.datetime :invoice_on
      t.datetime :payment_on

      t.timestamps
    end
  end

  def self.down
    drop_table :subscriptions
  end
end

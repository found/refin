class AddPaymentMethodToSubscriptions < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :payment_method, :string
    add_column :subscriptions, :payment_number, :string
  end

  def self.down
    remove_column :subscriptions, :payment_number
    remove_column :subscriptions, :payment_method
  end
end

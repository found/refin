class ChangeSomeFieldsOnSubscriptions < ActiveRecord::Migration
  def self.up
    remove_column :subscriptions, :invoice_on
    remove_column :subscriptions, :payment_on
    add_column :subscriptions, :amount, :integer
  end

  def self.down
  end
end

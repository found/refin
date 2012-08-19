class AddInvoiceIdToSubscriptions < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :invoice_id, :integer
  end

  def self.down
    remove_column :subscriptions, :invoice_id
  end
end

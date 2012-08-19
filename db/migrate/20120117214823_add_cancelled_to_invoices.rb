class AddCancelledToInvoices < ActiveRecord::Migration
  def self.up
    add_column :invoices, :cancelled, :boolean, :default => false
    add_column :invoices, :cancelled_on, :datetime
  end

  def self.down
  end
end

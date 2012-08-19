class AddExportedToInvoices < ActiveRecord::Migration
  def self.up
    add_column :invoices, :exported, :boolean, :default => false
  end

  def self.down
    remove_column :invoices, :exported
  end
end

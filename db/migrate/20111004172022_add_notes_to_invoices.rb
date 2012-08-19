class AddNotesToInvoices < ActiveRecord::Migration
  def self.up
    add_column :invoices, :notes, :text
  end

  def self.down
    remove_column :invoices, :notes
  end
end

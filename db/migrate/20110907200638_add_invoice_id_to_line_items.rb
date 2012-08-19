class AddInvoiceIdToLineItems < ActiveRecord::Migration
  def self.up
    add_column :line_items, :invoice_id, :integer
  end

  def self.down
    remove_column :line_items, :invoice_id
  end
end

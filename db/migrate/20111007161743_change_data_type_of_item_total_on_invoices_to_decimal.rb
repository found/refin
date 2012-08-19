class ChangeDataTypeOfItemTotalOnInvoicesToDecimal < ActiveRecord::Migration
  def self.up
    change_column :invoices, :amount, :decimal, :precision => 10, :scale => 2
  end

  def self.down
  end
end

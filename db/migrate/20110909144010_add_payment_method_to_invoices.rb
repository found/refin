class AddPaymentMethodToInvoices < ActiveRecord::Migration
  def self.up
    add_column :invoices, :payment_method, :string
    add_column :invoices, :payment_number, :string
    change_column_default :transactions, :error, false
  end

  def self.down
    remove_column :invoices, :payment_number
    remove_column :invoices, :payment_method
  end
end

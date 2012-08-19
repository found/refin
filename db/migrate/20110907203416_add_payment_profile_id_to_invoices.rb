class AddPaymentProfileIdToInvoices < ActiveRecord::Migration
  def self.up
    add_column :invoices, :payment_profile_id, :integer
  end

  def self.down
    remove_column :invoices, :payment_profile_id
  end
end

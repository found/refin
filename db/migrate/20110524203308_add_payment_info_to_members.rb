class AddPaymentInfoToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :customer_cim_id, :string
    add_column :members, :subscription_id, :integer
    add_column :members, :payment_profile_id, :integer
  end

  def self.down
    remove_column :members, :payment_profile
    remove_column :members, :subscription
    remove_column :members, :customer_cim_id
  end
end

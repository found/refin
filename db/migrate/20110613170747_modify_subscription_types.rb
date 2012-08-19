class ModifySubscriptionTypes < ActiveRecord::Migration
  def self.up
    remove_column :subscription_types, :cost
    add_column :subscription_types, :day, :integer
  end

  def self.down
  end
end

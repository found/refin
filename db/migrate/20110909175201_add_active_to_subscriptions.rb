class AddActiveToSubscriptions < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :active, :boolean, :default => true
  end

  def self.down
    remove_column :subscriptions, :active
  end
end

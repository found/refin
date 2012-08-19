class AddAssociationToSubscriptions < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :program_id, :integer
  end

  def self.down
    remove_column :subscriptions, :program_id, :integer
  end
end

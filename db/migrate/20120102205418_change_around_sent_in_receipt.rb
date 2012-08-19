class ChangeAroundSentInReceipt < ActiveRecord::Migration
  def self.up
    change_column :receipts, :sent, :boolean, :default => false
  end

  def self.down
  end
end

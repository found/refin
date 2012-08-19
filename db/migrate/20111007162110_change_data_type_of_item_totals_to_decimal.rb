class ChangeDataTypeOfItemTotalsToDecimal < ActiveRecord::Migration
  def self.up
    change_column :subscriptions, :amount, :decimal, :precision => 10, :scale => 2
    add_column :transactions, :amount, :decimal, :precision => 10, :scale => 2
  end

  def self.down
  end
end

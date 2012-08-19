class CreateTableSubscriptionAdjustments < ActiveRecord::Migration
  def self.up
    create_table :subscription_adjustments do |t|
      t.integer :subscription_id
      t.integer :donation_adjustment_id
      t.decimal :amount, :precision => 10, :scale => 2
    end
  end

  def self.down
    drop_table :subscription_adjustments
  end
end

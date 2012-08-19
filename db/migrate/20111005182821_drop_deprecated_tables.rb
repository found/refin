class DropDeprecatedTables < ActiveRecord::Migration
  def self.up
    drop_table :donations
    drop_table :products
  end

  def self.down
  end
end

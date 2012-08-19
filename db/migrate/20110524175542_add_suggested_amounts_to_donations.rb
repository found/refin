class AddSuggestedAmountsToDonations < ActiveRecord::Migration
  def self.up
    add_column :donations, :suggested_amounts, :text
  end

  def self.down
    remove_column :donations, :suggested_amounts
  end
end

class ChangeCountryFromAddressToCountryId < ActiveRecord::Migration
  def self.up
    remove_column :addresses, :country
    add_column :addresses, :country_id, :integer, :default => 232, :null => false
  end

  def self.down
  end
end

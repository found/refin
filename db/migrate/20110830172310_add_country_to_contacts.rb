class AddCountryToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :country, :string, :default => "UNITED STATES"
  end

  def self.down
  end
end

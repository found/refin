class AddPositionToCountries < ActiveRecord::Migration
  def self.up
    add_column :countries, :position, :integer, :default => 0
  end

  def self.down
  end
end

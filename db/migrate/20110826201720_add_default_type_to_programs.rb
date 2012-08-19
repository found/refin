class AddDefaultTypeToPrograms < ActiveRecord::Migration
  def self.up
    add_column :programs, :default_donation_type, :string, :default => "monthly"
  end

  def self.down
  end
end

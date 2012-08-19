class AddDisabledToPrograms < ActiveRecord::Migration
  def self.up
    add_column :programs, :disabled, :boolean, :default => false
  end

  def self.down
    remove_column :programs, :disabled
  end
end

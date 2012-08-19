class AddMoreFieldsToPrograms < ActiveRecord::Migration
  def self.up
    add_column :programs, :monthly_enabled, :boolean, :default => true
    add_column :programs, :one_time_enabled, :boolean, :default => true
    rename_column :programs, :suggested_amounts, :monthly_suggested_amounts
    add_column :programs, :one_time_suggested_amounts, :text
  end

  def self.down
  end
end

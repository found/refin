class AddAbbreviationToPrograms < ActiveRecord::Migration
  def self.up
    add_column :programs, :abbreviation, :string
  end

  def self.down
  end
end

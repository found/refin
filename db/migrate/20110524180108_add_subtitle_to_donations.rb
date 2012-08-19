class AddSubtitleToDonations < ActiveRecord::Migration
  def self.up
    add_column :donations, :subtitle, :string
  end

  def self.down
    remove_column :donations, :subtitle
  end
end

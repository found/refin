class AddVerifiedToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :verified, :boolean, :default => false
  end

  def self.down
    remove_column :members, :verified
  end
end

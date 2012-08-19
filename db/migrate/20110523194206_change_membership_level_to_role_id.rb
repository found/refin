class ChangeMembershipLevelToRoleId < ActiveRecord::Migration
  def self.up
    rename_column :users, :membership_level, :role_id
  end

  def self.down
  end
end

class RenameProvinceToStateInMembersAndChangeToString < ActiveRecord::Migration
  def self.up
    rename_column :members, :province, :state
    change_column :members, :state, :string
  end

  def self.down
  end
end

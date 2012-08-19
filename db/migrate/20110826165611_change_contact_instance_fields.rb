class ChangeContactInstanceFields < ActiveRecord::Migration
  def self.up
    rename_column :contact_instances, :member_id, :contact_id
  end

  def self.down
  end
end

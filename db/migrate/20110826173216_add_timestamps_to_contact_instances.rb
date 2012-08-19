class AddTimestampsToContactInstances < ActiveRecord::Migration
  def self.up
    add_column :contact_instances, :created_at, :datetime
    add_column :contact_instances, :updated_at, :datetime
  end

  def self.down
  end
end

class CreateContactInstances < ActiveRecord::Migration
  def self.up
    create_table :contact_instances do |t|
      t.integer :member_id
      t.text :message
      t.boolean :request_follow_up
    end 
  end

  def self.down
    drop_table :contact_instances
  end
end

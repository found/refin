class RemoveFieldsFromMembers < ActiveRecord::Migration
  def self.up
    remove_column :members, :street_address
    remove_column :members, :city
    remove_column :members, :state
    remove_column :members, :postal_code
  end

  def self.down
  end
end

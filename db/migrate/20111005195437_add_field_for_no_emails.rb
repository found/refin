class AddFieldForNoEmails < ActiveRecord::Migration
  def self.up
    add_column :members, :restrict_emails, :boolean, :default => false
  end

  def self.down
    remove_column :members, :restrict_emails
  end
end

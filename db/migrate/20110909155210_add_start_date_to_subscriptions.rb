class AddStartDateToSubscriptions < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :start_date, :string
  end

  def self.down
    remove_column :subscriptions, :start_date
  end
end

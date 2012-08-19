class AddEndDateToSubscriptions < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :end_date, :datetime
  end

  def self.down
    remove_column :subscriptions, :end_date
  end
end

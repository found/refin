class AddEffectiveDateToNewsItems < ActiveRecord::Migration
  def self.up
    add_column :news_items, :effective_date, :datetime
    add_column :news_items, :top_priority, :boolean, :default => false
  end

  def self.down
    remove_column :news_items, :effective_date
    add_column :news_items, :top_priority
  end
end

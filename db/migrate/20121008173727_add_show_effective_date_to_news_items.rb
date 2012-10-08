class AddShowEffectiveDateToNewsItems < ActiveRecord::Migration
  def self.up
    add_column :news_items, :show_effective_date, :boolean, :default => false
  end

  def self.down
    remove_column :news_items, :show_effective_date
  end
end

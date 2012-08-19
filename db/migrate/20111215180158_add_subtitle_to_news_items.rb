class AddSubtitleToNewsItems < ActiveRecord::Migration
  def self.up
    add_column :news_items, :subtitle, :string
  end

  def self.down
    remove_column :news_items, :subtitle
  end
end

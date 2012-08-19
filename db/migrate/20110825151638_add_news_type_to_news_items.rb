class AddNewsTypeToNewsItems < ActiveRecord::Migration
  def self.up
    add_column :news_items, :news_type, :string, :default => "CAM Newsletter"
  end

  def self.down
    remove_column :news_items, :news_type
  end
end

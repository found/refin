class AddImageCaptionToProgramsAndNews < ActiveRecord::Migration
  def self.up
    add_column :programs, :image_caption, :text
    add_column :news_items, :image_caption, :text
  end

  def self.down
    remove_column :programs, :image_caption
    remove_column :programs, :image_caption
  end
end

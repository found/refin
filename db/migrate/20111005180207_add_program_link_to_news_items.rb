class AddProgramLinkToNewsItems < ActiveRecord::Migration
  def self.up
    add_column :news_items, :program_id, :integer
  end

  def self.down
    remove_column :news_items, :program_id
  end
end

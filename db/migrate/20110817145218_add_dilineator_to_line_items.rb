class AddDilineatorToLineItems < ActiveRecord::Migration
  def self.up
    add_column :line_items, :recurring, :boolean, :default => false
  end

  def self.down
  end
end

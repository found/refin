class ChangeDecimalsInLineItems < ActiveRecord::Migration
  def self.up
    change_column :line_items, :price, :decimal, :precision => 10, :scale => 2
  end

  def self.down
  end
end

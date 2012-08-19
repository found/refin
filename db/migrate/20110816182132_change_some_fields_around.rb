class ChangeSomeFieldsAround < ActiveRecord::Migration
  def self.up
    rename_column :line_items, :donation_id, :program_id
    remove_column :line_items, :product_id
  end

  def self.down
  end
end

class AddPriceToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :price, :decimal, :precision => 10, :scale => 2
    change_column :orders, :total, :decimal, :precision => 10, :scale => 2
  end

  def self.down
    remove_column :products, :price
  end
end

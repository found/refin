class AddAncestryToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :ancestry, :string
    add_index :categories, :category_name
    add_index :categories, :id
    add_index :categories, :ancestry 
  end

  def self.down
    remove_column :categories, :ancestry
    remove_index :categories, :ancestry
  end
end

class CreateCategories < ActiveRecord::Migration

  def self.up
    create_table :categories do |t|
      t.string :category_name
      t.text :category_short_description
      t.text :category_description
      t.integer :category_image_id
      t.integer :position

      t.timestamps
    end

    add_index :categories, :id

    load(Rails.root.join('db', 'seeds', 'categories.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "categories"})

    Page.delete_all({:link_url => "/categories"})

    drop_table :categories
  end

end

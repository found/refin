class CreateProducts < ActiveRecord::Migration

  def self.up
    create_table :products do |t|
      t.string :product_name
      t.text :product_description
      t.integer :product_image_id
      t.integer :category_id
      t.integer :position

      t.timestamps
    end

    add_index :products, :id

    load(Rails.root.join('db', 'seeds', 'products.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "products"})

    Page.delete_all({:link_url => "/products"})

    drop_table :products
  end

end

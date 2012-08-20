class CreateBusinesses < ActiveRecord::Migration

  def self.up
    create_table :businesses do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :province
      t.string :zipcode
      t.string :lat
      t.string :lng
      t.text :description
      t.integer :image_id
      t.integer :position

      t.timestamps
    end

    add_index :businesses, :id

    load(Rails.root.join('db', 'seeds', 'businesses.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "businesses"})

    Page.delete_all({:link_url => "/businesses"})

    drop_table :businesses
  end

end

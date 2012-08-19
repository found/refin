class CreateDonations < ActiveRecord::Migration

  def self.up
    create_table :donations do |t|
      t.string :donation_name
      t.text :donation_short_description
      t.text :donation_description
      t.integer :donation_image_id
      t.integer :position

      t.timestamps
    end

    add_index :donations, :id

    load(Rails.root.join('db', 'seeds', 'donations.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "donations"})

    Page.delete_all({:link_url => "/donations"})

    drop_table :donations
  end

end

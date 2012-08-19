class CreateContacts < ActiveRecord::Migration

  def self.up
    create_table :contacts do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :postal_code
      t.integer :member_id
      t.boolean :newsletter_recipient
      t.integer :position

      t.timestamps
    end

    add_index :contacts, :id

    load(Rails.root.join('db', 'seeds', 'contacts.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "contacts"})

    Page.delete_all({:link_url => "/contacts"})

    drop_table :contacts
  end

end

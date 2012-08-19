class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :member_id
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.string :address_type

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end

class CreateSubscriptionTypes < ActiveRecord::Migration

  def self.up
    create_table :subscription_types do |t|
      t.string :title
      t.int :day
      t.integer :position

      t.timestamps
    end

    add_index :subscription_types, :id

    load(Rails.root.join('db', 'seeds', 'subscription_types.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "subscription_types"})

    Page.delete_all({:link_url => "/subscription_types"})

    drop_table :subscription_types
  end

end

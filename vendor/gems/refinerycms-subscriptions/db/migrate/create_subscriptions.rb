class CreateSubscriptions < ActiveRecord::Migration

  def self.up
    create_table :subscriptions do |t|
      t.integer :member_id
      t.integer :subscription_type_id
      t.integer :position

      t.timestamps
    end

    add_index :subscriptions, :id

    load(Rails.root.join('db', 'seeds', 'subscriptions.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "subscriptions"})

    Page.delete_all({:link_url => "/subscriptions"})

    drop_table :subscriptions
  end

end

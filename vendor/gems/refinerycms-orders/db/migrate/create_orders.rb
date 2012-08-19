class CreateOrders < ActiveRecord::Migration

  def self.up
    create_table :orders do |t|
      t.integer :member_id
      t.integer :item_total
      t.decimal :total
      t.integer :order_state_id
      t.integer :position

      t.timestamps
    end

    add_index :orders, :id

    load(Rails.root.join('db', 'seeds', 'orders.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "orders"})

    Page.delete_all({:link_url => "/orders"})

    drop_table :orders
  end

end

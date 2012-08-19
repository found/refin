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
    
    create_table :order_states do |t|
      t.string :state
      t.timestamps
    end
    
    create_table :line_items do |t|
      t.integer :order_id
      t.integer :donation_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :price
      t.timestamps
    end

    add_index :orders, :id
    add_index :order_states, :state
    add_index :order_states, :id
    add_index :line_items, :id
    add_index :line_items, :order_id
    add_index :line_items, :donation_id
    add_index :line_items, :product_id
    
    load(Rails.root.join('db', 'seeds', 'orders.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "orders"})

    Page.delete_all({:link_url => "/orders"})

    drop_table :orders
    drop_table :order_states
    drop_table :line_items
  end

end

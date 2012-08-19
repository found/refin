class CreateReceipts < ActiveRecord::Migration
  def self.up
    create_table :receipts do |t|
      t.integer :invoice_id
      t.datetime :date_to_send
      t.boolean :sent
      t.boolean :cancelled
      t.datetime :date_cancelled
      t.timestamps
    end
  end

  def self.down
    drop_table :receipts
  end
end

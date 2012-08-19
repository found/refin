class CreateTableDonationAdjustments < ActiveRecord::Migration
  def self.up
    create_table :donation_adjustments do |t|
      t.integer :program_id
      t.integer :percentage_change
      t.datetime :effective_date
      t.text :reasoning
      t.timestamps
    end
  end

  def self.down
    drop_table :donation_adjustments
  end
end

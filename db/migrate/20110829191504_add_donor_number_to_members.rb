class AddDonorNumberToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :donor_number, :string
  end

  def self.down
  end
end

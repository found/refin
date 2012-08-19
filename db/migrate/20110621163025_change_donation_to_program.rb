class ChangeDonationToProgram < ActiveRecord::Migration

  def self.up
    # rename_table :donations, :programs
    rename_column :programs, :donation_name, :program_name
    rename_column :programs, :donation_short_description, :program_short_description
    rename_column :programs, :donation_description, :program_description
    rename_column :programs, :donation_image_id, :program_image_id
    add_index :programs, :id
  end

  def self.down
  end

end

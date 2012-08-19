class CreateTableCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :country_code, :null => false
      t.string :country_name, :null => false
      t.timestamps
    end
    
    add_index :countries, :country_code
    add_index :countries, :country_name
    add_index :countries, :id
  end

  def self.down
    drop_table :countries
    
    remove_index :countries, :country_code
    remove_index :countries, :country_name
    remove_index :countries, :id
  end
end

class CreateCatProgJunc < ActiveRecord::Migration
  def self.up
    create_table :cat_prog_juncs do |t|
      t.integer :category_id
      t.integer :program_id
      t.timestamps
    end
  end

  def self.down
    drop_table :cat_prog_junc
  end
end

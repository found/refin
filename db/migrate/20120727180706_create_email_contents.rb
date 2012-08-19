class CreateEmailContents < ActiveRecord::Migration
  def self.up
    create_table :email_contents do |t|
      t.string :subject
      t.string :from
      t.string :bcc
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :email_contents
  end
end

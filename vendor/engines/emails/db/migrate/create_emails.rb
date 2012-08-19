class CreateEmails < ActiveRecord::Migration

  def self.up
    create_table :emails do |t|
      t.string :subject
      t.string :from
      t.string :bcc
      t.text :body
      t.string :template_model
      t.integer :position

      t.timestamps
    end

    add_index :emails, :id

    load(Rails.root.join('db', 'seeds', 'emails.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "emails"})

    Page.delete_all({:link_url => "/emails"})

    drop_table :emails
  end

end

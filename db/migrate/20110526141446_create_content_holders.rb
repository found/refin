class CreateContentHolders < ActiveRecord::Migration

  def self.up
    create_table :content_holders do |t|
      t.string :title
      t.text :body
      t.integer :position
      t.timestamps
    end

    add_index :content_holders, :id
    add_index :content_holders, :title

    load(Rails.root.join('db', 'seeds', 'content_holders.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "content_holders"})

    Page.delete_all({:link_url => "/content_holders"})

    drop_table :content_holders
  end

end

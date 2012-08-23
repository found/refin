class CreateMeetings < ActiveRecord::Migration

  def self.up
    create_table :meetings do |t|
      t.string :title
      t.datetime :date
      t.integer :photo_id
      t.text :blurb
      t.integer :position

      t.timestamps
    end

    add_index :meetings, :id

    load(Rails.root.join('db', 'seeds', 'meetings.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "meetings"})

    Page.delete_all({:link_url => "/meetings"})

    drop_table :meetings
  end

end

class CreateBookmarks < ActiveRecord::Migration
  def self.up
    create_table :bookmarks do |t|
      t.string :title
      t.string :url
      t.string :description
      t.string :permalink
      t.integer :user_id
      t.timestamps
    end
    add_index :bookmarks, :url, :unique => true
  end

  def self.down
    drop_table :bookmarks
  end
end
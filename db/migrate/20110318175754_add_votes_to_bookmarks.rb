class AddVotesToBookmarks < ActiveRecord::Migration
  def self.up
    add_column :bookmarks, :up_votes, :integer, :null => false, :default => 0
    add_column :bookmarks, :down_votes, :integer, :null => false, :default => 0
  end

  def self.down
    drop_column :bookmarks, :up_votes
    drop_column :bookmarks, :down_votes
  end
end

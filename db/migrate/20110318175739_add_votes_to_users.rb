class AddVotesToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :up_votes, :integer, :null => false, :default => 0
    add_column :users, :down_votes, :integer, :null => false, :default => 0
  end

  def self.down
    drop_column :users, :up_votes
    drop_column :users, :down_votes
  end
end

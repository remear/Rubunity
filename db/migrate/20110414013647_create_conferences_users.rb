class CreateConferencesUsers < ActiveRecord::Migration
  def self.up
    create_table :conferences_users, :id => false do |t|
      t.references :conference_id
      t.references :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :conferences_users
  end
end

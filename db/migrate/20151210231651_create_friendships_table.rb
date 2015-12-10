class CreateFriendshipsTable < ActiveRecord::Migration
  def change
    create_table :friendships_tables do |t|
      t.integer :user_id
      t.integer :friend_id
    end
  end
end

class CreateNotificationsTable < ActiveRecord::Migration
  def change
    create_table :notifications_tables do |t|
      t.integer :user_id
      t.integer :group_id
      t.string :sender_name
      t.string :content
    end
  end
end

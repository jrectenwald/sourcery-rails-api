class CreateVideosTable < ActiveRecord::Migration
  def change
    create_table :videos_tables do |t|
      t.string :link
      t.string :title
      t.datetime :published_at
      t.integer :likes
      t.integer :dislikes
      t.string :uid
      t.integer :group_id
      t.integer :user_id
    end
  end
end

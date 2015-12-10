class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments_tables do |t|
      t.integer :user_id
      t.integer :resource_id
      t.text :content
    end
  end
end

class CreateFavoritesTable < ActiveRecord::Migration
  def change
    create_table :favorites_tables do |t|
      t.integer :user_id
      t.integer :resource_id
    end
  end
end

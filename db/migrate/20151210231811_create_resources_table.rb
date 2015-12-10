class CreateResourcesTable < ActiveRecord::Migration
  def change
    create_table :resources_tables do |t|
      t.integer :group_id
      t.integer :user_id
      t.string :title
      t.string :link
    end
  end
end

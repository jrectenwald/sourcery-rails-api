class CreateUserGroupsTable < ActiveRecord::Migration
  def change
    create_table :user_groups_tables do |t|
      t.integer :user_id
      t.integer :group_id
    end
  end
end

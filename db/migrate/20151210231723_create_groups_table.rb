class CreateGroupsTable < ActiveRecord::Migration
  def change
    create_table :groups_tables do |t|
      t.string :topic
      t.text :description
    end
  end
end

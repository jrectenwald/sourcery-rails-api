class CreateTeachersTable < ActiveRecord::Migration
  def change
    create_table :teachers_tables do |t|
      t.integer :user_id
    end
  end
end

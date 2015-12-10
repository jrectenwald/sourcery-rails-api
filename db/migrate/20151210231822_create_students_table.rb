class CreateStudentsTable < ActiveRecord::Migration
  def change
    create_table :students_tables do |t|
      t.integer :user_id
    end
  end
end

class CreateVideoObservers < ActiveRecord::Migration
  def change
    create_table :video_observers do |t|

      t.timestamps null: false
    end
  end
end

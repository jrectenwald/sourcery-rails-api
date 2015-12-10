class CreateGoogleDocs < ActiveRecord::Migration
  def change
    create_table :google_docs do |t|

      t.timestamps null: false
    end
  end
end

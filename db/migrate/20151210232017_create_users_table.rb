class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users_tables do |t|
      t.string :firstname
      t.string :lastname
      t.datetime :dob
      t.string :email
      t.string :gender
      t.string :provider
      t.string :uid
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.string :gmail_name
      t.integer :sign_in_count, default: 0
      t.string :image
    end
  end
end

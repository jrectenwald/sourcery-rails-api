class UserSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :firstname, :lastname, :email, :dob, :gender, :provider, :uid, :oauth_token, :oauth_expires_at, :gmail_name, :sign_in_count, :image
end

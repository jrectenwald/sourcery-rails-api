class FriendshipSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :user_id, :friend_id
end

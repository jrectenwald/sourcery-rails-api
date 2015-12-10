class FavoriteSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :user_id, :resource_id
end

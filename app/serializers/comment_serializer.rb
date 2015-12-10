class CommentSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :user_id, :resource_id, :content
end

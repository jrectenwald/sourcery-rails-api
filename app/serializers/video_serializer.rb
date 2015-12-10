class VideoSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :link, :title, :published_at, :likes, :dislikes, :uid, :group_id, :user_id
end

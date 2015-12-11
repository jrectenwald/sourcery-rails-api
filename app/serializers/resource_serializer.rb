class ResourceSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :group_id, :user_id, :title, :link
  has_many :comments


end

class GroupSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :topic, :description
  has_many :resources, :users
end

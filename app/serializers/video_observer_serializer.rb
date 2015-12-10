class VideoObserverSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id
end

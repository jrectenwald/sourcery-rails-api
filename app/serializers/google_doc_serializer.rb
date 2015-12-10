class GoogleDocSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :url, :doc_type, :group_id
end

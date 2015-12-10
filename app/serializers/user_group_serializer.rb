class UserGroupSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :user_id, :group_id
end

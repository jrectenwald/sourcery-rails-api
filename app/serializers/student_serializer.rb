class StudentSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :user_id
end

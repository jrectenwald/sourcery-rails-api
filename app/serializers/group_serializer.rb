class GroupSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :topic, :description

  def attributes
    attributes = super
    attributes[:resources] = object.resources.try(:as_json)
    attributes[:users] = object.users.try(:as_json)
    attributes
  end

end

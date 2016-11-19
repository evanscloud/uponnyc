class CommentSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :event_id

  has_one :event
end

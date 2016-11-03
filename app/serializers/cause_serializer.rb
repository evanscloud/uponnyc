class CauseSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :events
end

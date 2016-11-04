class CauseSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :events
  has_many :organizations
end

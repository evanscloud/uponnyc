class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :organization, :start, :end, :description, :address, :skills, :age, :url, :created_at

  has_one :cause
  has_many :comments
end

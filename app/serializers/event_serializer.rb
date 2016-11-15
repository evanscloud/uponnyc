class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :organization, :start, :end, :description, :address, :skills_needed, :minimum_age, :url

  has_one :cause
end

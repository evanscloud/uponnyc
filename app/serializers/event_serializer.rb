class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :organization, :start_time, :end_time, :start_date, :end_date, :description, :address, :skills_needed, :minimum_age, :url

  has_one :cause
end

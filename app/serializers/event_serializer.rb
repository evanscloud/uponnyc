class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :type, :start_time, :end_time, :start_date, :end_date, :description, :address, :skills_needed, :minimum_age, :url

  has_one :organization
  has_one :cause
end

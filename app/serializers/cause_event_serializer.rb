class CauseEventSerializer < ActiveModel::Serializer
  attributes :id, :title, :type, :start_time, :end_time, :start_date, :end_date, :description, :address, :skills_needed, :minimum_age, :url
end

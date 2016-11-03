class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :mission_statement, :url, :address

  has_many :events
end

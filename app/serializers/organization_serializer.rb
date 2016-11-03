class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :description, :mission_statement, :url, :address

  has_many :events
end

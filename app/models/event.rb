class Event < ApplicationRecord
  belongs_to :organization
  has_many :causes_events
  has_many :causes, :through => :causes_events
end

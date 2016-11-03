class Event < ApplicationRecord
  has_many :causes_events
  has_many :causes, :through => :causes_events
end

class Cause < ApplicationRecord
  has_many :causes_events
  has_many :events, :through => :causes_events
end

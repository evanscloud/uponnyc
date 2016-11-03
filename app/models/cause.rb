class Cause < ApplicationRecord
  has_many :events
  has_many :organizations, :through => :events
end

class Organization < ApplicationRecord
  has_many :events
  has_many :causes, :through => :events
end

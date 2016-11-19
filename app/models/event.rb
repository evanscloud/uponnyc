class Event < ApplicationRecord
  belongs_to :cause
  has_many :comments
end

class CauseEvent < ApplicationRecord
  belongs_to :cause
  belongs_to :event
end

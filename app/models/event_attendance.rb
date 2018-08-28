class EventAttendance < ApplicationRecord
  belongs_to :guest
  belongs_to :event
end

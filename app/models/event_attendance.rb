class EventAttendance < ApplicationRecord
  belongs_to :guest
  belongs_to :event
  belongs_to :admin_user
end

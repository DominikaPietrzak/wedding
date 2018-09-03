class EventAttendanceStatus < ApplicationRecord
belongs_to :event_attendance, optional: true

  after_initialize do
    if self.new_record?
      self.eastatus ||= :no
    end
  end
end

class CompanionNumber < ApplicationRecord
  belongs_to :companion
  belongs_to :guest

  def self.guest_sum_with_companions(event)
    sum = 0
    yes_status_id = EventAttendanceStatus.find_by(eastatus: "yes").id
    attendances =  EventAttendance.where(event_id: event.id, event_attendance_status_id: yes_status_id)
    attendances.map do |att|
      guests = Guest.where(id: att.guest_id)
      guests.map do |guest|
        sum = sum + guest.companion.number + 1
      end
    end
    return sum
  end

end

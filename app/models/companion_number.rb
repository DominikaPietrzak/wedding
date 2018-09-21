class CompanionNumber < ApplicationRecord
  belongs_to :companion
  belongs_to :guest

  def self.event_guest_sum_with_companions(event)
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

  def self.newlywed_guest_sum_with_companions(newlywed)
    sum = 0
    yes_status_id = GuestListStatus.find_by(status: "yes").id
    lists =  NewlywedGuestList.where(newlywed_id: newlywed.id, guest_list_status_id: yes_status_id)
    lists.map do |list|
      guests = Guest.where(id: list.guest_id)
      guests.map do |guest|
        sum = sum + guest.companion.number + 1
      end
    end
    return sum
  end
end

class EaGuestConfirmation < ApplicationRecord
  belongs_to :guest
  belongs_to :guest_confirmation_status
  belongs_to :event

  def  self.create_or_delete_ea_guest_confirmation(event_attendance_object)
    status_id = event_attendance_object.event_attendance_status_id
    status = EventAttendanceStatus.find_by(id: status_id)

    if (status.eastatus =="yes")
      no_status = GuestConfirmationStatus.find_by(status: "no")
      ea_confirmation = EaGuestConfirmation.find_by(guest_id: event_attendance_object.guest_id, event_id: event_attendance_object.event_id )
      if (ea_confirmation == nil)
        EaGuestConfirmation.create([{guest_id:event_attendance_object.guest_id, event_id: event_attendance_object.event_id, guest_confirmation_status_id: no_status.id}])
      end
    end
    if (status.eastatus == "no")
      eaguest_confirmation = EaGuestConfirmation.find_by(guest_id: event_attendance_object.guest_id, event_id: event_attendance_object.event_id)
      if eaguest_confirmation
        eaguest_confirmation.destroy
      end
    end
  end
end

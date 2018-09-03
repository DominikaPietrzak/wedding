class AddEventAttendanceStatusToEventAttendance < ActiveRecord::Migration[5.1]
  def change
    add_reference :event_attendances, :event_attendance_status, foreign_key: true
  end
end

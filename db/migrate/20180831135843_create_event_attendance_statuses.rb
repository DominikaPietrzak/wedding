class CreateEventAttendanceStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :event_attendance_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end

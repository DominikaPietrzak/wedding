class AddAdminUserToEventAttendance < ActiveRecord::Migration[5.1]
  def change
    add_reference :event_attendances, :admin_user, foreign_key: true
  end
end

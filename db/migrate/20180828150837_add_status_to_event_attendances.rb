class AddStatusToEventAttendances < ActiveRecord::Migration[5.1]
  def change
    add_column :event_attendances, :status, :integer
  end
end

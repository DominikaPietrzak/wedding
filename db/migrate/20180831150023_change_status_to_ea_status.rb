class ChangeStatusToEaStatus < ActiveRecord::Migration[5.1]
  def change
    rename_column :event_attendance_statuses, :status, :eastatus
  end
end

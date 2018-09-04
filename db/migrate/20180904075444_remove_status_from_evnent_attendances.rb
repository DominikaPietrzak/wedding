class RemoveStatusFromEvnentAttendances < ActiveRecord::Migration[5.1]
  def change
    remove_column :event_attendances, :status, :integer
  end
end

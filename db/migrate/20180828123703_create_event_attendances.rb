class CreateEventAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :event_attendances do |t|
      t.references :guest, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end

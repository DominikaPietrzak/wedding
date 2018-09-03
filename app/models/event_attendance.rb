class EventAttendance < ApplicationRecord
  belongs_to :guest
  belongs_to :event
  belongs_to :admin_user

  has_one :event_attendance_status



  def self.create_event_attendance_for_event_and_guest
    @guests = Guest.all
    @events = Event.all
    @guests.each do |guest|
      @events.each do |event|
        @event_attendance = EventAttendance.new
        @event_attendance.guest_id = guest.id
        @event_attendance.event_id = event.id
        @event_attendance.admin_user_id = 1
        @event_attendance.save
      end
    end
  end

end

class Event < ApplicationRecord
  has_many :event_attendances, dependent: :destroy
  belongs_to :admin_user
  has_many :budgets

  def self.create_event_attendance(event,admin)
    @guests = Guest.all
     @guests.each do |guest|
       @event_attendance =  EventAttendance.new
       @event_attendance.guest_id = guest.id
       @event_attendance.admin_user_id = admin.id
       @event_attendance.event_id = event.id
       @event_attendance.save
     end
   end

end

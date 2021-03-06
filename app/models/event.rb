class Event < ApplicationRecord
  has_many :event_attendances, dependent: :delete_all
  belongs_to :admin_user
  has_one :budget, dependent: :destroy
  has_many :expense, dependent: :destroy
  has_one :event_adress, dependent: :destroy
  has_many :ea_guest_confirmations, dependent: :destroy
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

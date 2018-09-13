class Guest < ApplicationRecord

  belongs_to :admin_user , optional: true
  has_one :guest_adress
  has_many :event_attendances
  has_one :accompaning_people
  has_many :ea_guest_confirmations


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 def self.create_event_attendance(guest,admin)
   @events = Event.all
    @events.each do |event|
      @event_attendance =  EventAttendance.new
      @event_attendance.guest_id = guest.id
      @event_attendance.admin_user_id = admin.id
      @event_attendance.event_id = event.id
      @event_attendance.save
    end
  end
end

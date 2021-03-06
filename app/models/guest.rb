class Guest < ApplicationRecord

  belongs_to :admin_user , optional: true
  has_one :guest_adress, dependent: :destroy
  has_many :event_attendances, dependent: :destroy
  has_one :companion, dependent: :destroy
  has_one :companion_number, through: :companion,  dependent: :destroy
  has_many :ea_guest_confirmations, dependent: :destroy
  has_many :newlywed_guest_lists, dependent: :destroy

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

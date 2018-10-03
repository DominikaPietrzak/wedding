class EaGuestConfirmation < ApplicationRecord
  belongs_to :guest
  has_one :guest_confirmation_status
  belongs_to :event

  def self.guest_confirmation(guest)
    @events = Event.all
    no_status = GuestConfirmationStatus.find_by(status:"no").id
    @events.each do |event|
      confirmation =   EaGuestConfirmation.new
      confirmation.guest_id = guest.id
      confirmation.guest_confirmation_status_id = no_status
      confirmation.event_id = event.id
      confirmation.save
    end
  end

  def self.each_guest_confirmation(event)
    @guests = Guest.all
    no_status = GuestConfirmationStatus.find_by(status:"no").id
    @guests.each do |guest|
      confirmation = EaConfirmation.new
      confirmation.guest_id = guest.id
      confirmation.guest_confirmation_status_id = guest.id
      confirmation.event_id = event.id
    end
  end

end

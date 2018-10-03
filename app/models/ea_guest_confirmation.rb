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

end

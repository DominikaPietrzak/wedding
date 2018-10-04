class EaGuestConfirmation < ApplicationRecord
  belongs_to :guest
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
      confirmation = EaGuestConfirmation.new
      confirmation.guest_id = guest.id
      confirmation.guest_confirmation_status_id = no_status
      confirmation.event_id = event.id
      confirmation.save
    end
  end

  def self.event_and_guest_confirmation
    @guests = Guest.all
    @events = Event.all
    no_status = GuestConfirmationStatus.find_by(status:"no").id
    @guests.each do |guest|
      @events.each do |event|
        confirmation = EaGuestConfirmation.new
        confirmation.guest_id = guest.id
        confirmation.guest_confirmation_status_id = no_status
        confiramtion.event_id = event.id
        confirmation.save
      end
    end
  end

end

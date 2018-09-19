class GuestListConfirmationSummaryController < ApplicationController
  def index
    @events = Event.all
    @statuses = GuestConfirmationStatus.all
    @ea_guest_confirmations = EaGuestConfirmation.all
  end
end

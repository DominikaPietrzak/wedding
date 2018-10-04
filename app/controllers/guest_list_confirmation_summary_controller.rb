class GuestListConfirmationSummaryController < ApplicationController
  before_action :authenticate_admin_user!
  def index
    @events = Event.all
    @statuses = GuestConfirmationStatus.all
    @ea_guest_confirmations = EaGuestConfirmation.all
  end
end
